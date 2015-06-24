//7.10
clc;
Vm=230*2^0.5;
Vf=2*Vm/%pi;
alph_a=%pi/4;
Va=(2*Vm/%pi)*cos(alph_a);
Rf=200;
If=Vf/Rf;
Kt=1.1;
Ia=50;
T=Ia*(Kt*If);
printf("Torque of motor=%.3f Nm", T)
Ra=0.25;
Vb=Va-Ia*Ra-2;
w=Vb/(Kt*If);
N=w*60/(2*%pi);
printf("\nSpeed of motor=%.1f rpm", N)