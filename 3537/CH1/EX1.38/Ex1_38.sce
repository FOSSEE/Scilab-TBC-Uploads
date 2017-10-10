//Example 1_38
clc();
clear;
//To calculate the thickness of the mica sheet
d=0.1                           //units in cm
D=50                           //units in cm
u=1.58
x=0.2                         //units in cm
t=(x*d)/(D*(u-1))
printf("The thickness of the mica sheet is %.6f cm",t)
