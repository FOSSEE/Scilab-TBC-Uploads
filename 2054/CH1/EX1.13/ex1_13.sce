//Exa:1.13
clc;
clear;
close;
P=4;//no. of poles
f=50;//in hertz
N_s=120*f/P;//in rpm
s_f=0.05;//slip
N=N_s*(1-s_f);//in rpm
V=415;//in volts
s_m=0.1;//slip corresponding to maximum slip
N1=1350;//in rpm
s_fn=(N_s-N1)/N_s;//full load slip
V1=V*sqrt((N1/N)*(s_f/s_m)*(8/5));
disp(V1,' RMS Voltage (in volts)=')