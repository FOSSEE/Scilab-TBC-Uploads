//Exa 11.21
clc;
clear;
close;
//Given data :
Vs=11;//kV
f=50;//Hz
C_N_by_2=2.5;//micro F(between 2 core 1 core shorted)
C_N=C_N_by_2*2;//micro F
Vp=Vs*1000/sqrt(3);//Volt
Ic=2*%pi*f*Vp*C_N*10^-6;//A
R_INS2=810;//kohm
R_INS=R_INS2/2;//kohm
del=atand(1/(R_INS*10^3*2*%pi*f*C_N*10^-6));//degree
disp(del,"Loss angle(degree)");
Ie=Vp/R_INS/1000;//A
I=sqrt(Ic^2+Ie^2);//A
disp(I,"No load current drawn by cable(A)");
