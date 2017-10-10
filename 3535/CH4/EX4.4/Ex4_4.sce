//Chapter 4, Example 4.4, Page 95
clc
clear
// Q value in a reaction
MH = 1.00782503
MD = 2.01410178
me = 0.00054858
C2 = 931.5
Q = (2*MH-MD-2*me)*C2
printf("\n Q of the reaction = %f MeV",Q);// Answer provided in the text is wrong 
//Answer may vary due to round off error 
