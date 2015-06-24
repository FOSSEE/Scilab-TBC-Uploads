//Exa 11.5
clc;
clear;
close;
//Given data :
VL=33*1000;//Volt
f=50;//Hz
l=3.4;//km
d=2.5;//cm
radial_thick=0.6;//cm
epsilon_r=3.1;//relative permitivity
V=VL*sqrt(2)/sqrt(3);//V(assuming 3 phase system)
D=d+2*radial_thick;//cm
D=D/100;//cm
d=d/100;//m
gmax=2*V/d/log(D/d);//V/m
disp(gmax,"Maximum electrostatic stress(V/m)");
C=0.024*epsilon_r*l/log10(D/d);//micro F
Vp=VL/sqrt(3);//V
Ic=2*%pi*f*C*10^-6*Vp;//A
kVA=sqrt(3)*VL*Ic*10^-3;//kVAR
disp(kVA,"Total charging kVA(kVAR)");
