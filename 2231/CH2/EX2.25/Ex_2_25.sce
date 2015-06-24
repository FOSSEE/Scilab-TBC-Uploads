//Example 2_25
clc;
clear;close;

//Given data: 
Vs=400;//V
f=50;//Hz
Eb=300;//V

//Solution :
Vdc=Eb;//V
Vm=Vs*sqrt(2);//V
//Vdc=3*sqrt(3)/2/%pi*Vm*cosd(alfa);//V
alfa=acosd(Vdc/(3*sqrt(3)/2/%pi*Vm));//degree
disp(alfa,"Firing angle(degree)");
