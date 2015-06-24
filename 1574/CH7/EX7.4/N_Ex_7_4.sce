clc
//Chapter8
//Example7.4, page no 283
//Given
Ap1=10, Ap2=10, Ap3=10;  // Gain of each states
F_1=6, F_2=6, F_3=6;   //Noise figure of each state
F1= round(10^(F_1/10)), F2= round(10^(F_2/10)), F3= round(10^(F_3/10));   // approximating the values

F=F1+((F2-1)/Ap1)+((F3-1)/(Ap1*Ap2))
mprintf('overall noise Figure is: %f',F)






