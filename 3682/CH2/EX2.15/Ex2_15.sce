// Exa 2.15

clc;
clear;

// Given data

// Referring Fig. 2.26, we get
Vcc=10; // Volts
R1= 4.7*10^3; // k Ohm’s
B=100; // Current gain(>>1)
Vbe=0.75; // Volts

// Solution

disp(" Node ‘A‘ is at transistor Q1, Node ‘B’ is at transistor Q2 and Node ‘C’ is at transistor Q3.");

printf('\n  From Fig. 2.26 at node ‘A‘. I = Ic1 + Ib1 + I1‘ ...Eqn(1)');
printf(' \n  Also at node ‘B‘. I1‘ = Ic2 + Ib3.');
printf('\n  Putting value of I1‘ in eqn(1) we get I = (approximately) 2Ic. \n');

I = (Vcc-Vbe)/R1;  // By ohm‘s law

printf('\n The calculated value of I = %.2f mA. \n' , I*1000);

Ic3 = I/2;

printf(' The collector current of Q3 is equal to the collector current of Q1 and Q2 due to mirror action. \n Therefore, the emitter current IE3 = Ic3 = Ic = I/2 = %.2f mA. \n ',Ic3*1000);
