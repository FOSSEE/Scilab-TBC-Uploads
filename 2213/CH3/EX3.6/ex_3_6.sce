//Example 3.6 // current
clc;
clear;
close;
//given data :
m=50;// in gm
t=2*60*60;// in sec
ECE_silver=111.8*10^-8;// in kg C^-1
atomic_weight1=108;// for silver
atomic_weight2=63.5;//for copper
valency=1;//for silver
Ces=atomic_weight1/valency;// chemical equivalent of silver
Cec=atomic_weight2/2;// chemical equivalent of copper
Z=ECE_silver*(Cec/Ces);
I=(m*10^-3)/(Z*t);
disp(I,"current,I(A) = ")
