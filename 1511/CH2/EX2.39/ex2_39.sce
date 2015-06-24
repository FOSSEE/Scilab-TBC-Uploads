// Example 2.39 page no-127
clear
clc
x=99.5 *10^3  //Ohm (R1+R2)
rm=0.56 *10^3 //Ohm
v1=20     //V
i=v1/x
i=0.0002 //aproxximated to
k=16/i
R1=k-rm
R2=x-R1

printf("\nR1=%.1f K-ohm\nR2=%.1f K-ohm",R1/1000,R2/1000)
