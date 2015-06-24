// Design a source follower
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-59 in page 361

clear; clc; close;

// Given data
Vds=14; // Drain-source voltage in V
Idq=3*10^-3; // Drain-source current in mA
Vdd=20; // Drain voltage in V
gm=2*10^-3; // Transconductance in mS
rd=50*10^3; // Dynamic resistance in K-ohms
Vgs=-1.5; // Gate-source voltage in V

// Calculation
R=(20-14)/Idq;
R1=Vgs/-Idq;
R2=R-R1;
Ro=1/gm;
Av=R/(R+Ro);
R_1=1/(1-(Av*(R2/R)));
printf("R1 = %0.1e ohms\nR2 = %0.1e ohms\nRo = %0.1e ohms\n",R1,R2,Ro);
printf("Av = %0.1f*Av1\n",Av);
printf("Effective input resistance R1 = %0.1f*R3",R_1);

// Result
// R1 = 0.5 K
// R2 = 1.5 K
// Ro = 0.5 K
// Av = 0.8*Av'
// R1(effective) = 2.5*R3