// To determine thee Ac system voltage when the dc system is disconnected or shutdown
clear 
clc;

X=.625;
P=1;
Q=.6;
V=1;
Eth=V+(Q*X/V)+%i*(P*X/V);
Phase_Eth=atand(imag(Eth)/real(Eth));
mprintf("Eth=%.2f at an angle %.0f degrees",abs(Eth),Phase_Eth);
