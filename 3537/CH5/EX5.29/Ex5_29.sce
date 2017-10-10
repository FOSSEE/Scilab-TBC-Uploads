//Example 5_29
clc();
clear;
//To calculate the Braggs angle
h=6.624*10^-34          
m=9.1*10^-31       //units in Kgs
e=1.6*10^-19   //units in eV
vo=80   //units in nm
lamda=(h/sqrt(2*m*e*vo))*10^9    //units in m
h=1
k=1
l=1
lp=0.35   //units in nm
d111=lp/sqrt(h^2+k^2+l^2)      //units in nm
theta=asin(lamda/(2*d111))*(180/%pi)
printf("Braggs angle is %.2f Degrees",theta)
