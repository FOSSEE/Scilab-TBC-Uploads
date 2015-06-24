//Chapter 1,Example 1.10,Pg1.13
clc;
Ra0=120
Rb0=180
Aa=0.0035
Ab=0.008
A=(Ra0*Aa+Rb0*Ab)/(Ra0+Rb0)
printf("\n The series combination of the two = %.4f per degree C\n",A)
