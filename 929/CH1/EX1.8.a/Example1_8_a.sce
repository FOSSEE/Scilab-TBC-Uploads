//Example 1.8(a)

clear;

clc;

a=10^5;//Open Loop Gain

b=10^(-3);//Feedback Factor

T=a*b;//return ratio or loop gain

d=1+T;//Desensitivity Factor

A=a/d;//Overall Gain

anew=a+(10/100)*a;//Increasing gain by 10%

Tnew=anew*b;//New return ratio or loop gain

dnew=1+Tnew;//New Desensitivity Factor

Anew=anew/dnew;//Overall Gain

Achange=((Anew-A)/A)*100;//Percentage Change in Overall Gain

printf("Percentage change in A =%.1f percent",Achange);