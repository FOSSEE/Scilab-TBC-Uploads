// Calculate complex voltage gain,Input admittance
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-52 in page 355

clear; clc; close;

// Given data
mu=100; // Amplification factor
rd=40*10^3; // Dynamic resistance in K-ohms
gm=2.5*10^-3; // Transconductance in mA/V
Cgs=4*10^-12; // Gate-source capacitance in pF
Cds=0.6*10^-12; // Drain-source capacitance in pF
Cgd=2.4*10^-12; // Gate-drain capacitance in pF

// Calculation
Ygs=%i*2*%pi*10^2*4*10^-12;
Yds=%i*2*%pi*10^2*0.6*10^-12;
Ygd=%i*2*%pi*10^2*2.4*10^-12;
gd=2.5*10^-5;
Yd=10^-5;
Av=(-2.5/3.5)*10^2;
Ci=Cgs+(1-Av)*Cgd;
printf("Av = %0.2f\nCi = %0.3e F\n",Av,Ci);
printf("For f=10^6 Hz,\n");
Ygs1=%i*2.51*10^-6;
Yds1=%i*0.377*10^-6;
Ygd=%i*1.51*10^-6;
Av=((-2.5*3.5*10^2)/12.30)+%i*((2.5*0.188*10^2)/12.30);
C1=Cgs+(72*Cgd);
G1=2*%pi*2.4*10^-12*3.82;
R1=1/G1;
printf("Av =");
disp(Av);
printf("C1 = %0.3e F\nR1 = %0.3e ohms",C1,R1);

// Result
// Av = -71.4
// Ci = 177.8 pF
// At f=10^6 Hz,
// Av = -71.2+j3.82
// C1 = 177 pF
// R1 = 173.5 K-ohms