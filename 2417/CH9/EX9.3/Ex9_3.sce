//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 9.3\n\n\n");
// Chapter 9 : Gas Power Cycles
// Problem 9.3  (page no. 464) 
// Solution

cv=0.7186; //Unit:kJ/(kg*K) //Specific heat constant for constant volume process
Rc=8; //Compression Ratio Rc=v2/v3
k=1.4;  //It is apparent incerease in compression ratio yields an increased cycle efficiency
T2=20+273; //20 C converted to its kelvin value
qin=50; //Heat added //Unit:kJ
T3byT2=Rc^(k-1);
T3=T3byT2*T2; //Unit:K
//qin=cv*(T4-T3) //heat added //Unit:kJ
T4=(qin/cv)+T3; //The peak temperature of the cycle //Unit:K
printf("The peak temperature of the cycle is %f Kelvin i.e. %f Celcius",T4,T4-273);
