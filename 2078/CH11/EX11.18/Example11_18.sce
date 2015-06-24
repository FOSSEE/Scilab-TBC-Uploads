//Exa 11.18
clc;
clear;
close;
//Given data :
Cs3=1;//micro F/km(between shorted conductor)
Cs=Cs3/3;//micro F
Cdash=0.6;//micro F(Cdash=2*Cc+Cs : between two shorted conductor)
Cc=(Cdash-Cs)/2;//micro F
C2=1/2*[3*Cc+Cs];//micro F
disp(C2,"Capacitance between any two cores(micro F)");
C2dash=2*Cc+2/3*Cs;//micro F
disp(C2dash,"Capacitance between any two shorted conductors and third conductor(micro F)");
