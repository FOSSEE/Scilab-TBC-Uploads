//exa 6.1
clc;clear;close;
format('v',6);
kV=220;//kV
Z=0.8+%i*0.2;//pu
V=1;//V(Voltage at load terminal)
X=0.2+0.05;//pu(line and transformer reactance)
P=real(Z);//pu
Q=imag(Z);//pu
BaseMVA=100;//MVA
BasekV=220;//kV
I=sqrt((P^2+Q^2)/V^2)*expm(%i*atan(-imag(Z),real(Z)));//pu
Vb=V+I*(X*expm(%i*%pi/2));//pu(Voltage at 200 kV bus)
fi_p=atand(imag(Vb),real(Vb));//degree(power angle)
Vb=abs(Vb)*kV;//kV(Voltage at 200 kV bus)
pf=cosd(fi_p+atand(imag(Z),real(Z)));//power factor at 220 kV bus
disp(Vb,"Voltage at 220 kV bus (kV)");
disp(pf,"Power factor at 220 kV bus (lagging)");
