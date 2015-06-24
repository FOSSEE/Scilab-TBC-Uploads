clc;
clear;

printf("\n Example 6.5\n");

L=0.5;// Length of the weir
printf("\n Given\n Length of the weir = %.1f m",L);
D=100e-3;//Height of water over the weir
printf("\n Height of water over the weir = %d",D*1e3);
n=0;
//Using Francis formula:
Q=1.84*(L-(0.1*n*D))*D^1.5;
printf("\n\n Calculations:\n Volumetric flowrate of water = %.2f m^3/s",Q);