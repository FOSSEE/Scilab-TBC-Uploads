clc;
clear all;
e=1.6*1e-19;//charge of electron
ue=0.39;//electron mobility
up=0.19;//hole mobility
ni=2.4*1e19;//intrinsic carrier density 
sigma=ni*e*(up+ue);
disp('ohm^-1*m^-1',sigma,'conductivity of intrinsic semiconductor=');
