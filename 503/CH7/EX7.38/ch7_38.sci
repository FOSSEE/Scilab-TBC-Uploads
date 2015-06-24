// to determine the starting torque developed
clc;
P=180000;
V=600;
Ia=P/V;
Ra=.105;
Ea=V-Ia*Ra;
n=600;
nn=500;
Eaa=Ea*nn/n;
Iaa=282;    //from magnetising curve
Iad=Ia-Iaa;
Ias=500;    //at start
k=Iad/Ia^2;
Iae=Ias-Iad*k;
Eas=590;    //from magnetising curve
Ts=Eas*Ias/(2*%pi*nn/60);disp(Ts,'T_start(Nm)');
