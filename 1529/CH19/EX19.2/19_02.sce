//Chapter 19, Problem 2
clc;
cmrr=90;                //CMRR
Ad=150e3;               //differential gain
Ac=Ad/10^(cmrr/20);     //common mode gain
printf("Common mode gain = %.2f",Ac);
