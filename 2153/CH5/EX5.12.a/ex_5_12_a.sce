//Example 5.12.a : velocity
clc;
clear;
close;
//given data :
m=9.1*10^-31; // in kg
e=1.602 *10^-19;
Ef=3.75;// in ev
Wf=(e*Ef);// in J
vf=sqrt(((2*Wf)/m));
disp(vf,"velocity,vf(m/s) = ")
// answer is wrong in book
