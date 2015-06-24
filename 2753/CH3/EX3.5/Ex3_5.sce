//Example 3.5: 
clc;
clear;
close;
//given data :
format('v',5)
Ie=5*10^-3;// in A
alfa=0.95;
I_co=10*10^-6;// in A
Ic=((alfa*Ie)+I_co)*10^3;
Ib=(Ie-(Ic*10^-3))*10^6;
disp(Ic,"Collector current,(mA) = ")
disp(Ib,"Base current,(micro-A) = ")
