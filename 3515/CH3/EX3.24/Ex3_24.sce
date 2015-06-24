// Exa 3.24
format('v',5);
clc;
clear;
close;
// Given data 
VBE_1= 0.7;// in V
VBE_2= 0.5;// in V
V_T= 0.025;// in V
I_C1= 10;// in mV
I_C1= I_C1*10^-3;// in A
//  I_C1= I_S*%e^(VBE_1/V_T)        (i)
//  I_C2= I_S*%e^(VBE_2/V_T)        (ii)
// Devide equation (ii) by (i)
I_C2= I_C1*%e^((VBE_2-VBE_1)/V_T);// in A
disp(I_C2*10^6,"The value of I_C2 in µA is : ")
