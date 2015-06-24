//Exa 11.19
clc;
clear;
close;
//Given data :
Vs=33;//kV
f=50;//Hz
l=3.4;//km
d=2.5;//cm
D=d+2*0.6;//cm
epsilon_r=3.1;//relative permitivity
C=0.024*epsilon_r/log10(D/d)*l*1000*1000*10^-6;// F/phase
Vp=Vs*1000/sqrt(3);//Volt
Ic=2*%pi*f*C*10^-6*Vp;//A
kVAR=3*Vp*Ic*10^-3;//kVAR
disp(kVAR,"Total charging kVAR : ");
Emax=Vp/(d/2*log(D/d))*10^-3;//kV/cm
disp(Emax,"Maximum stress in the cable(kV/cm) ");
