// Exa 4.4
clc;
clear;
close;
// Given data
Vin= 15;// in volt
SR= 0.8;// in V/micro sec
SR=SR*10^6;// in V/sec
omega= SR/Vin;
f= omega/(2*%pi);// in Hz
disp(f*10^-3,"Full power bandwidth in kHz")
disp(f*10^-3,"It means that a 741 op-amp with a sinusoidal output of 15 V amplitude will begin to show slew limiting distortion if the frequency exceeds (in KHz)")
