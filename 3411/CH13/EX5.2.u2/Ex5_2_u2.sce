//Example 5_2_u2
clc();
clear;
//To calculate the maximum current density
hc=7.9*10^3    //units in amp/met
d=10^-3             //units in met
ic=hc*%pi*d         //units in amp
critcurrentden=(ic*4)/(%pi*d^2) //units in amp/met^2
printf("The critical current density is %d amp/met^2",critcurrentden)
