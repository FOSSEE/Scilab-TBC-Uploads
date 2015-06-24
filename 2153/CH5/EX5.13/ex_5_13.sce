//Example 5.13 : the mean free path
clc;
clear;
close;
//given data :
format('v',5)
t=10^-9; // in sec
m=9.109*10^-31; // in kg
e=1.602 *10^-19;
Ef=7// in ev
Wf=e*Ef;// in J
vf=sqrt((2*Wf)/m);
lamda=vf*t*10^3;
disp(lamda,"the mean free path,lamda(mm) = ")
