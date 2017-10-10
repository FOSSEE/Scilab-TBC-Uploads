// Exa 2.9

clc;
clear;

// Given data

// A differential amplifier with single ended output
// Referring circuit given in Fig. 2.9
Bo = 100; // current gain
Re = 150; // Ω
Rc = 10*10^3; // Ω
IQ = 0.5*10^-3; // mA
VT = 25*10^-3; // mV

// Solution

ICQ = IQ/2;
gm = ICQ/VT;  // in ʊ
r_pi = Bo/gm;

printf(' The differential mode gain for a single stage is found from the equivalent circuit shown in fig.(ii)\n  on page no. 64 and is equal to ');
ADM = (1/2)*(Bo*Rc/(r_pi+(1+Bo)*Re));
printf(' %d V/V. \n',round(ADM));
printf(' \n  We can see that sign of ADM is positive because the output is taken at the collector of Q2\n  whereas input is applied at the base of Q1. \n');
