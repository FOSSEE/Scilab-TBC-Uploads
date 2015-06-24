clc;
clear all;
e=1.6*1e-19;//charge of electron
ue=0.39;//electron mobility
up=0.19;//hole mobility
ni=2.5*1e19;//intrinsic carrier density 
l=1e-2;//length of Ge rode
a=1e-4;//area of Ge rode
sigma=ni*e*(up+ue);//conductivity of intrinsic semiconductor
disp('ohm^-1*m^-1',sigma,'conductivity of intrinsic semiconductor=');
P=1/sigma;
R=P*l/a;//resistance of Ge rode
disp('ohm',R,'resistance of Ge rode');
