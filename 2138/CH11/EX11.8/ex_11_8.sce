//Example 11.8 // inductance and phase angle between voltage and current
clc;
clear;
close;
V=200;//in volts
I=2.5;// in amperes
Vo=250;// in volts
f=50;// in hertz
R=V/I;// in ohms
Z=Vo/I;// in ohms
Xl=sqrt(Z^2-R^2);//inductive reactance in ohms
L=(Xl/(2*%pi*f));//inductance in henry
pf=R/Z;//power factor
phi=acosd(pf);//angle of phase differnce in degree
x=floor(phi);//
y=phi-x;//
disp(L,"inductance in henry is")
disp("angle of phase difference is "+string(x)+" degree and "+string(round(y*60))+" minutes ")
