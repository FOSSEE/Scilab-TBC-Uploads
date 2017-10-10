//Determine the value of a shunt capacitor

clc;
clear;

V=440; // Line to line voltage
f=50; // Frequency of operation
w=2*%pi*f; // Angular frequency
Vph= V/sqrt(3); // Phase voltage
I=40; // Magnitude of current
pfi=0.7; // Lagging power factor of the current
ti=acosd(0.7);

//Iv=I*(expm(%i*-1*%pi*ti/180));

// For pf = 0.7
Pa=Vph*I*pfi; // Active power
Pr=Vph*I*sind(ti); // Reactive power

// To gain a pf of 0.9 
pfn=0.9;
Pnr=Pa*tand(acosd(pfn)); // Reactive power at pf of 0.9

PRC=Pr-Pnr; // VArs supplied from the capacitor

C=PRC/((Vph^2)*w); // Capacitance required to meet the condition

printf('The value of the shunt capacitor should raise the pf to 0.9 = %g mF\n',C*1000)

