// Find operating region,Vgs,Vds,Id
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 6-21 in page 290

clear; clc; close;

// Given data
K=0.2*10^-3; // Constant in mA/V^2
Vt=1; // Voltage in V
Vdd=10; // Drain voltage in V
Rd=1*10^3; // Drain resistance in ohms

// Calculation
printf("(a)Vds=Vgs>Vgs-Vt.Hence active region operation\n");
printf("0.2*Vgs^2+0.6*Vgs-9.8=0\n");
Vgs1=(-0.6+sqrt(0.6^2-4*0.2*-9.8))/(2*0.2);
Vgs2=(-0.6-sqrt(0.6^2-4*0.2*-9.8))/(2*0.2);
printf("(b)Vgs = %0.2f V or %0.2f V\n",Vgs1,Vgs2);
printf("Since 0<Vgs<10, Vgs = %0.2f V\n",Vgs1);
Id=(Vdd-5.66)/Rd;
printf("(c)Vds = Vgs = 5.66 V\n(d)Id = %0.2e A",Id);

//Result
// (a) The region of operation is active
// (b) Vgs = 5.66 V
// (c) Vds = 5.66 V
// (c) Id = 4.34 mA