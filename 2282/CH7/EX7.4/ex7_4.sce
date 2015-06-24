// Example 7.4, page no-270
clear
clc

g1=30         //gain of RF stage in dB
t1=20         //Noise temperature in K
g2=10         //down converter gain in dB
t2=360        //noise temperature in K
g3=15         //gain of IF stage in dB
t3=1000       //noise temperature in K
t=290         //reference temperature in K

G1=1000       //30 dB equivalent gain
Te=t1+(t2/G1)+t3/(G1*g2)
F=1+Te/t
printf("Effective noise temperature, Te = %.2fK",Te)
printf("\n\n System Noise Figure, F = %.2f",F)
