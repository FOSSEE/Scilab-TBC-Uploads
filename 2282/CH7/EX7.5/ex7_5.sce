// Example 7.5, page no-271
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
//Te=t1+(t2/G1)+t3/(G1*g2)
F1=1+t1/t
F2=1+t2/t
F3=1+t3/t

F=F1+((F2-1)/G1)+(F3-1)/(G1*g2)
printf("Noise Figure specificatios of the three stages are as follow,\n\n F1 = %.3f\n F2 = %.2f\n F3 = %.2f",F1,F2,F3)
printf("\n\n The overall noise figure is, F = %.2f",F)
