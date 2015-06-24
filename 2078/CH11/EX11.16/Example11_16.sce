//Exa 11.16
clc;
clear;
close;
//Given data :
Vs=11;//kV
f=50;//Hz
l=2.5*1000;//m
C_all3=1.8;//micro F
Cdash=1.5;//micro F(2*Cc+Cs)
Cs=C_all3/3;//micro F
Cc=(Cdash-Cs)/2;//micro F
C_N=3*Cc+Cs;//micro F
disp(C_N,"Capacitance of core to neutral(micro F)");
C_2=C_N/2;//micro F
disp(C_2,"Capacitance between any two core(micro F)");
Vp=Vs*1000/sqrt(3);//Volt
Ic=2*%pi*f*Vp*C_N*10^-6;//A
disp(Ic,"Charging current per phase(A)");
