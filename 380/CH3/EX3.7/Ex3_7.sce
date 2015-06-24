//Caption:Find the synchronous speed and percent slip of the motor
//Exa:3.7
clc;
clear;
close;
P=4;//no. of pole
f=50;//frequency (in Hz)
N_r=1200;//speed of rotor(in rpm)
N_s=(120*f)/P;
disp(N_s,'synchronous speed (in rpm)=');
s=(N_s-N_r)/N_s;//slip
s_p=s*100;
disp(s_p,'percent slip of the motor(%)=')