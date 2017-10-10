// Exa 2.16

clc;
clear;

// Given data

// A level shifter as shown in fig. 2.31
// Assuming Ideal silicon transistors  
Vbe = 0.7; // Volts
// B(current gain) has very large values
Vcc = 15; // Volts
Rc = 10*10^3; // Ω
Re = 5000; // Ω

// Solution

printf(' From fig. 2.31 we get that, transistors Q1 and Q2 form a current mirror.\n');
printf('  so Ic1 = Ic2 = I and that can be found by Ohm‘s law as ');
I = (Vcc - Vbe)/Rc; // Ω
printf(' I = Ic2 = %.2f mA. \n', I*1000 );
printf('  Now, the difference V1-V2 can be found using KVL as ');
dV = Vbe + I * Re;  // KVL between end points
printf(' %.2f V. \n',dV);
