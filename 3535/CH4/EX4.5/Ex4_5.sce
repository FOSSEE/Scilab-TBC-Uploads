//Chapter 4, Example 4.5, Page 96
clc
clear
// Q value of the reaction
mn = 1.0086649
MB = 10.0129370
MHe = 4.0026032
MLi = 7.0160040
C2 = 931.5
Q = (mn+MB-MHe-MLi)*C2 -0.48
printf("\n Q of the reaction = %f MeV",Q);
//Answer may vary due to round off error 
