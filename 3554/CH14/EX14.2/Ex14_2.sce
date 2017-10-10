// Exa 14.2

clc;
clear;

// Given data

Va=2;// Volts
Vb=1;// Volts
Vc=3; // Volts
Ra=3;// k Ohms
Rb=3;// k Ohms
Rc=3;// k Ohms
Rf=1;// k Ohms
Rom=270;// Ohms
Supply=15;// Volts

// Solution

disp(" Assuming that the opamp is initially nulled");
// Using equation 14.8 to determine the output voltage
Vo=-(Rf/Ra *Va+Rf/Rb *Vb+Rf/Rc *Vc);
printf('  The output voltage = %d Volts \n',Vo);