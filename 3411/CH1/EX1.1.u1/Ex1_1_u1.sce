//Example 1_1_u1
clc();
clear;
//To calculate the location of screen from slits
d=0.08            //units in cm
d=d*10^-2         //units in mts
betaa=6*10^-4       //units in mts
v=8*10^11           //units in kHz
c=3*10^8            //units in mts
lamda=c/(v*10^3)           //units in mts
d=(betaa*d)/lamda            //units in mts
printf("The distance of the screen from the slits is %.2fmts",d) 
