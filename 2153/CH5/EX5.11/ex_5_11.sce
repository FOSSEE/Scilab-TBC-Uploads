//Example 5.11 : velocity
clc;
clear;
close;
//given data :
m=9.109*10^-31; // in kg
e=1.602 *10^-19;
Ef=2.1// in ev
Wf=e*Ef;// in J
vf=sqrt((2*Wf)/m);
disp(vf,"velocity,vf(m/s) = ")
