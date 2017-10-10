//Example 3_4
clc();
clear;
//To calculate the thickness of the plate
lamda=5.5*10^-5        //units in cm
u0=1.553
ue=1.542
d=lamda/(2*(u0-ue))     //units in cm
d=d*10^-2               //units in mts
printf("The thickness of the plate is %.7fmts",d)
