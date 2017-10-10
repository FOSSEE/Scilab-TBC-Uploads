//Example 1_4
clc; 
clear;
//To find the ratio of maximum intensity to minimum intensity 
I1=10              //units in watts per square mts
I2=25              //units in watts per square mts
I1_I2=I1/I2
a1_a2=sqrt(I1_I2)
Imax_Imin=(a1_a2+1)^2/(a1_a2-1)^2
printf("The ratio of maximum intensity to minimum intensity is %f",Imax_Imin)