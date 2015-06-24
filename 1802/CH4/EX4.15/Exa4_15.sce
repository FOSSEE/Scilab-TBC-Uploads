//Exa 4.15
clc;
clear;
close;
//Given Data :
format('v',6);
VL=33;//in KV
f=50;//in hz
d1=4;//in meter
d2=4;//in meter
d3=8;//in meter
d=(d1*d2*d3)^(1/3);//in meter
epsilon_o=8.854*10^-12;//constnt
d=d*100;//in cm
r=0.62;//in cm
C=2*%pi*epsilon_o/log(d/r);//in Farad per meter
disp(C*50*1000*10^6,"Capacitance for 50 km line(in uF) :");
Vp=VL/sqrt(3);//in KV
Vp=Vp*10^3;//in volt
Ic=2*%pi*f*(C*50*1000*10^6)*10^-6*Vp;//in Ampere
disp(Ic,"The charging current(in Ampere) :");