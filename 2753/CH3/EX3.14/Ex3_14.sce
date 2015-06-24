//Example 3.14: 
clc;
clear;
close;
//given data :
alfa=0.992;// constant
Beta=alfa/(1-alfa);
format('v',5)
disp(Beta,"(a) Beta= ")
I_CBO=48*10^-9;// in A
I_CEO=(1+Beta)*I_CBO*10^6;
format('v',3)
disp(I_CEO,"(a) I_CEO (micro-A) = ")
Ib=30*10^-6;// in A
Ic=((Beta*Ib)+(1+Beta)*I_CBO)*10^3;
format('v',5)
disp(Ic,"(b) Collector current,Ic(mA) = ")
