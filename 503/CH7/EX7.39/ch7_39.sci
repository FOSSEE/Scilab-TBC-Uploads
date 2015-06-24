//to determine speed and mech power

clc;
k=.2*10^-3;
Ia=250;
Iad=k*Ia^2;
Ianet=Ia-Iad;
Ea=428;    //from magnetising curve
V=600;
Ra=.105;
Eaact=V-Ia*Ra;
n=500;
nn=n*Eaact/Ea;disp(nn,'speed(rpm)');
Pmech=Eaact*Ia;disp(Pmech,'mech power debeloped(W)');
T=Pmech/(2*%pi*nn/60);disp(T,'torque(Nm)');
