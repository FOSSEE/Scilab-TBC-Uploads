//Example 3.10: 
clc;
clear;
close;
//given data :
Beta=100;// constant
Ib=20*10^-6;// in A
I_co=500*10^-9;// in A
Ic1=((Beta*Ib)+(1+Beta)*I_co)*10^3;
Ic2=(Beta*Ib)*10^3;
Error=(Ic1-Ic2)*100/Ic1;
format('v',5)
disp(Error,"The error,(%) = ")
//answer is wrong in the txtbook
