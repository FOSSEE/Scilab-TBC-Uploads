// Design of Triggering Circuit for a UJT
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 8-10 in page 390

clear; clc; close;

// Given Data
Vs=30; // DC source voltage in V
eta=0.51; // Intrinsic stand off ratio
Ip=10*10^-6; // Peak Emitter current of UJT in mu-A
Vv=3.5; // Valley voltage in V
Iv=10*10^-3; // Valley current in A
f=60; // Source frequency in Hz
tg=50*10^-6; // width of triggering pulse in seconds
C=0.5*10^-6; // Assumption for circuit Capacitance in mu-F
Vd=0.5; // Fixed value of Vb in V

// Calculations
Vp=(eta*Vs)+Vd;
Rlow=(Vs-Vp)/Ip; 
Rup=(Vs-Vv)/Iv;
tou=1/f;
R=(tou/C)*(1/log(1/(1-eta))); 
Rb1=tg/C; 
Rb2=10^4/(eta*Vs); 

printf("(a)The value of Base-1 Resistance of UJT is %0.2f ohm \n",Rb1);
printf("(b)The value of Base-2 Resistance of UJT is %0.2f ohm \n",Rb2);
printf("(c)Circuit resistance of the arrangement is %0.2e ohm \n",R);

// Results
// (a) The value of Base-1 Resistance of UJT is 100 ohm
// (b) The value of Base-2 Resistance of UJT is 654 ohm
// (c) Circuit resistance of the arrangement is 46.7 K-ohm