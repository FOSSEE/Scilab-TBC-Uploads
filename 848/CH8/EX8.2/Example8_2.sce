//clear//
//Caption:Program to calculate the system margin
//Example8.2
//page 288
clear;
clc;
close;
Ps = 3; //laser output in dBm
APD_sen = -32; //APD sensitivity in dBm
Allowed_Loss = Ps-APD_sen;//in dB
lsc = 1; //source connector loss in dB
ljc = 2*4; //two (jumper+connector loss) in dB
alpha = 0.3;//attenuation in dB/Km
L = 60; //cable length in Km
cable_att = alpha*60;//cable attenuation in dB
lrc = 1; //receiver connector loss in dB
system_margin = Allowed_Loss-lsc-ljc-cable_att-lrc;
disp(system_margin,'The   Final Margin in dB =')
//Result
//'The   Final Margin in dB =  7.  
