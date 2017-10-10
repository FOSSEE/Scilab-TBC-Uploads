//Optical Fiber communication by A selvarajan
//example 7.1
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
//given 
delta_lambda=60e-9;//delta lambda in m
lambda=1550e-9;//wavelength in m
c=3e8//velocity of light in m/s
CS=75*1e9//Channel spacing in Hz
Power_margin=30//power margin in dB
Fiber_loss=0.25//fiber loss in dB/Km
channel_capacity=2.5*1e9//channel capacity STM-16 in bps
delta_f=(c*delta_lambda)/lambda^2;//frequency bandwidth in Hz
transmission_distance=Power_margin/Fiber_loss//Transmission distance in Km
No_channels=round(delta_f/CS);//No. of channels 
distance_bitrate_product=No_channels*channel_capacity*transmission_distance//distance bitrate product in bpsKm
mprintf("frequency bandwidth =%f x10^12Hz",delta_f/1e12)////division by  1e12 to convert unit from Hz to 10^12 Hz
mprintf("\nTransmission distance =%f Km",transmission_distance)
mprintf("\nNo. of channels=%i",No_channels)
mprintf("\nDistance bitrate product =%f Tbits/sKm",distance_bitrate_product/1e12)////division by  1e12 to convert unit from bits/sKm to Tbits/sKm
