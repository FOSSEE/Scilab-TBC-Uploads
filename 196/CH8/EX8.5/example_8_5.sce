//Chapter 8
//Example 8-5
//ProbOnInstrumentationAmplifier 
//Page 222,223, Figure 8-6
clear;clc;
m = 1001 ;//Gain
E1 = 5.001 ; E2 = 5.002 ; //example 8-5(a)
E3 = 5.001 ; E4 = 5.000 ; //example 8-5(b)
E5 = -1.001 ; E6 = -1.002 ; //example 8-5(c)
Vout1 = m*(E1-E2); Vout2 = m*(E3-E4); Vout3 = m*(E5-E6);
printf ( "\n\n Output Voltages are %.4f V , %.4f V, %.4f V ", Vout1,Vout2,Vout3)