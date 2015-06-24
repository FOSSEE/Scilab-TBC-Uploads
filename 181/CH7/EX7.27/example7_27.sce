// Find Id,Vds,Vgs,Av
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-27 in page 331

clear; clc; close;

// Given data
Idss=3; // Drain-source current in mA
Vp=-2.4; // Pinch off voltage in volts

// Calculation
printf("Id^2-6.73*Id+5.76=0\n");
Id1=(6.73+sqrt(6.73^2-4*1*5.76))/2;
Id2=(6.73-sqrt(6.73^2-4*1*5.76))/2;
printf("Id = %0.2f mA or %0.2f mA\n",Id1,Id2);
printf("(a)The possible value is 1.01 mA\n");
Vgs=-Id2*1;
Vds=20-(1.09*(1+10));
printf("Vgs = %0.2f V\nVds = %0.2f V\n",Vgs,Vds);
gm=(-2/Vp)*sqrt(Id2*Idss);
Av=gm*10;
printf("(b)Voltage gain Av = %0.1f",Av);

// Result
// Id = 1.01 mA
// Vgs = -1.01 V
// (a) Vds = 8.01 V
// (b) Av = 14.5