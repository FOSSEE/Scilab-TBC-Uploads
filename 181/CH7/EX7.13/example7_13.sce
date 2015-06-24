// Determine Vgs,Id,Vds,Av
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-13 in page 322

clear; clc; close;

// Given data
Rd=12; // Drain resistance in K-ohms
Rg=1; // Gate resistance in M-ohms
Rs=0.47; // Source resistance in ohms
Vdd=30; // Drain voltage in volts
Idds=3*10^-3; // Drain-source current in mA

// Calculation
printf("Vgs=-1.41* (1+ 2Vgs/2.4 + Vgs^2/2.4)\n");
Vgs1=(-1.175+sqrt(1.175^2-4*0.245*1.41))/(2*0.245);
Vgs2=(-1.175-sqrt(1.175^2-4*0.245*1.41))/(2*0.245);
printf("(a)Upon solving we get Vgs = %0.3f V or %0.3f V\n",Vgs1,Vgs2);
Id=3*(1-(2.398/2.4))^2;
Vds=Vdd-Id*(Rd+Rs);
gm=((2*Idds)/2.4)*(1-(2.398/2.4));
Av=gm*12;
printf("(b)Drain current Ids = %0.1e A\n",Id);
printf("(c)Vds = %0.2f V\n",Vds);
printf("(d)Small signal voltage gain Av = %0.2e",Av);

// Result
// (a) Vgs = -2.398 V
// (b) Ids = 2.1*10^-6 A
// (c) Vds = 30 V
// (d) Av = 2.5*10^-5