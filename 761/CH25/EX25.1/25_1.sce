clc;
// page no 919
// prob no 25_1
span_length=40;//in km
Pin_mW = 1.5;
signal_strength_dBm = -25; fiber_length = 2.5;//in km
loss_per_slice_dB=0.25;f_loss_dB_per_km =0.3;
loss_connector_dB=4;
Pin_dBm =10*log10(Pin_mW);
splices=span_length / fiber_length -1;
fiber_loss = span_length * f_loss_dB_per_km;
splice_loss = splices * loss_per_slice_dB;
T_loss = fiber_loss + splice_loss + loss_connector_dB;
P_out = Pin_dBm - T_loss;
sys_margin= P_out - signal_strength_dBm;
disp('dB',sys_margin,'The system margin is');