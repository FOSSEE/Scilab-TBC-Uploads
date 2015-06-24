// Exa 3.12
clc;
clear;
close;
format('v',5)
// Given data
Im = 42.42;// in A
omega = 628;// in rad/sec
t = 1/6.977;// in sec assumed 
i = Im*sind(omega*t);// in A
disp(i,"The maximum value of current in A is");
// omega = 2*%pi*f;
f = omega/(2*%pi);// in Hz
disp(f,"The frequency in Hz is");
Irms = Im/(sqrt(2));// in A
disp(Irms,"The rms value in A is");
Iav = (2*Im)/%pi;// in A
disp(Iav,"The average value in A is");
k_f = Irms/Iav;
disp(k_f,"The form factor is");
