//Chapter 6, Example 6.2, Page 145
clc
clear
// Maximum Energy loss
me = 0.0005486
M = 4.003
EM = 4
Emax = 4*(me/M)*EM
printf("Emax = %f keV",Emax*10^3)
//Answers may vary due to round off error
