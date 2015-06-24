//Example No. 4.13
clc;
clear;
close;
format('v',7);

//Given Data : 
P=6;//poles
f=50;//Hz
MoI=9.5;//Kg-m^2
Tr=550;//N-m
S=5/100;//Slip
Tmax=720;//N-m
T_LH=1020;//N-m
th=12;//sec
Tmin=220;//N-m
Snl=3/100;//No load slip
Ns=120*f/P;//rpm
Nnl=Ns-Ns*Snl;//rpm
Nrated=Ns-Ns*S;//rpm
omega_mo=Nnl*2*%pi/60;//rad/s
omega_mr=Nrated*2*%pi/60;//rad/s
J=[Tr/(omega_mo-omega_mr)]*[th/log((T_LH-Tmin)/(T_LH-Tmax))];//Kg-m^2
MoI_flywheel=J-MoI;//Kg-m^2
disp(MoI_flywheel,"Moment of inertia of flywheel in Kg-m^2 : ");
//Answer in the book is wrong.
