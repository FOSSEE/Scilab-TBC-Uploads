//Chapter 8
//Example 8-1
//ProbOnOutputVoltage 
//Page 216, Figure 8-1
clear;clc;
//Given
m = 100 ; //Differential Gain
E1 = 10*10^-3; E2 = 10*10^-3;//input voltages
E3 = 0*10^-3; E4 = -20*10^-3;//input voltages
Vout1 = (m*E1)-(m*E2);//example 8-1(a)
Vout2 = (m*E1)-(m*E3);//example 8-1(b)
Vout3 = (m*E1)-(m*E4);//example 8-1(c)
printf ( "\n\n Output Voltages are %.4f V, %.4f V, %.4f V ", Vout1,Vout2,Vout3)