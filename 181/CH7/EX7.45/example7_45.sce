// Calculate input admittance
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-45 in page 348

clear; clc; close;

// Given data
mu=20; // Amplification factor
rd=10*10^3; // Dynamic resistance in K-ohms
gm=2*10^-3; // Transconductance in mA/V
Cgs=3*10^-12; // Gate-source capacitance in pF
Cds=1*10^-12; // Drain-source capacitance in pF
Cgd=2*10^-12; // Gate-drain capacitance in pF

// Calculation
printf("(a)Rd = 50 K\n");
printf("At f=1000Hz\n");
Ygs=%i*2*%pi*10^3*Cgs;
Yds=%i*2*%pi*10^3*Cds;
Ygd=%i*2*%pi*10^3*Cgd;
Yd=2*10^-6;
gd=10^-4;
Av=(-gm+Ygd)/(gd+Yd+Yds+Ygs);
C1=Cgs+(17.7*Cgd);
printf("Av = %0.1f\nC1 = %0.1e F\n\n",Av,C1);
printf("At f=10^6Hz\n");
Ygs1=%i*1.88*10^-6;
Yds1=%i*0.628*10^-6;
Ygd1=%i*1.26*10^-6;
Av1=(-gm+Ygd1)/(gd+Yd+Yds+Ygs);
R1=10^6/2.48;
C2=37.6*10^-12;
printf("Av = %0.1f\nR1 = %0.2e ohm\nC1=%0.1e F\n\n",Av1,R1,C2);
Zl=%i*5*10^4;
Yl=%i*2*10^-6;
printf("(b)Zl = j5*10^4;Yl = j2*10^-6\n");
printf("For f=1000Hz\n");
Av2=-gm/(gd+Yl);
C3=Cgs+(20.2*Cgd);
R2=20.8*10^6;
printf("Av = %0.2f\nR1 = %0.2e ohm\nC1 = %0.1e F\n\n",Av2,R2,C3);
printf("For f=10^6Hz\n");
Av3=(-200+(%i*1.26))/(10+(%i*3.88));
C4=Cgs+(18.4*Cgd);
R3=10^6/8.64;
printf("Av = %0.2f\nR1 = %0.2e ohm\nC1 = %0.2e F",Av3,R3,C4);

// Result
// (a)Rd = 50 K
// At f=1000Hz
// Av = -19.6
// C1 = 3.8e-011 F

// At f=10^6Hz
// Av = -19.6
// R1 = 4.03e+005 ohm
// C1=3.8e-011 F

// (b)Zl = j5*10^4;Yl = j2*10^-6
// For f=1000Hz
// Av = -19.99
// R1 = 2.08e+007 ohm
// C1 = 4.3e-011 F

// For f=10^6Hz
// Av = -17.34
// R1 = 1.16e+005 ohm
// C1 = 3.98e-011 F 