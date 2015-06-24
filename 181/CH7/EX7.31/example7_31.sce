// Calculate Vgsq,gm,Rs,Vdsq,Rl
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-31 in page 335

clear; clc; close;

// Given data
Vp=-4; // Pinch off voltage in V
Idss=1.65*10^-3; // Drain-source current in mA
Idq=0.8*10^-3; // Desired operating point of current in mA
Av=10; // Voltage gain in dB

// Calculation
printf("We know that Id = Idss*(1-(Vgs/Vp))^2\n");
Vgs=4*(sqrt(0.485)-1);
gmo=(-2*Idss)/Vp;
gm=gmo*(1-(Vgs/Vp));
Rs=Vgs/-Idq;
Rl=Av/gm;
Vds=24-(Idq*Rl)-(Idq*Rs);
printf("(a)Vgsq = %0.3f V\n(b)gm = %0.3e A/V\n(c)Rs = %0.3e ohms\n(d)Rl = %0.2e ohms\n(e)Vds = %0.3f V\n",Vgs,gm,Rs,Rl,Vds);
printf("Therefore,\n(e)Vdsq = 16.48 V");

// Result
// (a) Vgsq = -1.214 V
// (b) gm = 0.575 mA/V
// (c) Rs = 1.518 K-ohm
// (d) Rl = 17.4 K-ohm
// (e) Vdsq = 16.48 V