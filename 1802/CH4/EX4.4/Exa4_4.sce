//Exa 4.4
clc;
clear;
close;
//Given Data :
format('v',6);
Cs=1/3;//in uF
Cc=(0.6-Cs)/2;//in uF
//Part (a) :
C1=(3/2)*Cc+(1/2)*Cs;//in uF(between any two conductor)
disp(C1,"Capacitance between any two conductor(in uF) :");
//Part (b) :
C2=2*Cc+2*Cs/3
disp(C2,"Capacitance between any shorted onductors(in uF) :");