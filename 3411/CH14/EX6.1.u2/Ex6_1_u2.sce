//Example 6_1_u2
clc();
clear;
//To calculate the di-electric constant
eo=8.85*10^-12    //units in F/meter
alphae=36*10^-40     //units in meter^3
n=5*10^28    //units in meter^-3
er=((30*eo)+(2*n*alphae))/((30*eo)-(n*alphae))
printf("The di-electric constant is er=%.2f",er)
