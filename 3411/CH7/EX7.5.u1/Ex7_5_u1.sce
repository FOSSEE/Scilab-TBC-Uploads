//Example 7_5_u1
clc();
clear;
//To find the loss specification of a fiber
l=0.5       //units in KM
it=7.5*10^-6      //units in micro mts
i0=8.6*10^-6       //units in micro mts
alpha=(10/l)*log10(it/i0) //units in db/Km
printf("The loss specification of the fiber is alpha=%.2f db/km",alpha)
