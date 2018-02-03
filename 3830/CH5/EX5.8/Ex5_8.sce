// Exa 5.8

clc;
clear;

// Given

Va = 2000; // Anode voltage(Volts)
Vd = 100; // Deflecting plates volage(Volts)
a =1.5*10^-2; // axial length in m
Sd= 30*10^-2; // screen distance in m
Ld = 5*10^-2; // deflecting plates length in m

// Solution

// Let,
 x = 1.76*10^11 ; // e/m ratio in c/kg
L = Sd + Ld/2 ;
D = (Ld*L*Vd)/(2*a*Va) ; // Deflection produced(m)
Vo = sqrt(2*x*Va); // velocity of electrons in m/kg


printf(' The deflection produced on screen = %.3f cm \n',D*100);
printf('  The velocity of the electrons when they enter the field of the deflecting plates = %.4f * 10^7 m/kg \n', Vo/10^7);

// The answer provided in the textbook is wrong
