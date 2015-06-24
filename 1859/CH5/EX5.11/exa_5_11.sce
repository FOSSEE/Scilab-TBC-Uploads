// Exa 5.11
clc;
clear;
close;
// Given data
Vmax= 255;// in volt
Vx= 180;// in volt
f=10;// in kHz
f=f*10^3;// in Hz
t= (Vmax-Vx)/(2*%pi*f*Vmax);// time taken to read the unknown voltage in second
t=t*10^6;// in micro second
disp(t,"Time taken to read the unknown voltage in micro second");

