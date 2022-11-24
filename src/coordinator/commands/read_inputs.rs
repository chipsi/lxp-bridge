use crate::prelude::*;

use lxp::{
    inverter::WaitForReply,
    packet::{DeviceFunction, TranslatedData},
};

pub struct ReadInputs {
    channels: Channels,
    inverter: config::Inverter,
    register: i16,
    count: i16,
}

impl ReadInputs {
    pub fn new<U>(channels: Channels, inverter: config::Inverter, register: U, count: i16) -> Self
    where
        U: Into<i16>,
    {
        Self {
            channels,
            inverter,
            register: register.into(),
            count,
        }
    }

    pub async fn run(&self) -> Result<Packet> {
        let packet = Packet::TranslatedData(TranslatedData {
            datalog: self.inverter.datalog(),
            device_function: DeviceFunction::ReadInput,
            inverter: self.inverter.serial(),
            register: self.register,
            values: self.count.to_le_bytes().to_vec(),
        });

        let mut receiver = self.channels.from_inverter.subscribe();

        if self
            .channels
            .to_inverter
            .send(lxp::inverter::ChannelData::Packet(packet.clone()))
            .is_err()
        {
            bail!("send(to_inverter) failed - channel closed?");
        }

        receiver.wait_for_reply(&packet).await
    }
}
