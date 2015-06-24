//Example 1.8(b)

clear;

clc;

a=10^5;//Open Loop Gain

b=1;//Feedback Factor

T=a*b;//return ratio or loop gain

d=1+T;//Desensitivity Factor

aperchange=10;//Percentage Change in a

Achange=(1/(1+T))*aperchange;//Percentage Change in Overall Gain

printf("Percentage change in A =%.4f",Achange);