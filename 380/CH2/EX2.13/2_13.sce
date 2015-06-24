//Caption:Find hysteresis loss and eddy-current loss
//Exa:2.13
clc;
clear;
close;
//refer to eqn-2.50
//eqn:-2.51,2.52 & 2.53 are obtained
f=[25 25 60];//in hertz
disp(f,'frequency (in hertz)=');
B_m=[1.1 1.5 1.1];
P_m=[0.4 0.8 1.2];
//On solving eqn:-2.51 & eqn:-2.53
k_e=(0.016-0.02)/(30.25-72.6);
//on solving eqn:-2.51 & eqn:-2.52
n=(log((0.016-(30.25*k_e))/(0.032-(56.25*k_e))))/(log(1.1/1.5));
k_h=(0.016-(30.25*k_e))/1.1^n;
P_h=k_h*f.*B_m^n//hysteresis loss
disp(P_h,'Hysteresis loss (in Watts)=');
P_eddy=k_e*(f^2).*B_m^2//eddy current loss
disp(P_eddy,'eddy current loss (in Watts)=');