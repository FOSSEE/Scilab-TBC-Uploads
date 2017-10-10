// Exa 3.2

clc;
clear;

// Given data

// Fig. 3.2(b) represents the non-inverting amplifier
R1 = 1000; // Ω
Rf = 10000; // Ω
Vios = 0.01; // Volts
Ib = 300*10^-9; // Amperes
Ios = 50*10^-9; // Amperes

// Solution

printf(' From equation 3.24, we get VoT = ');
VoT = (1+(Rf/R1))*Vios + Rf*Ib ;
printf(' %d mV. \n ',VoT*1000);

Rcomp = 1/((1/R1) + (1/Rf)); // Rf || R1
printf(' The value of Rcomp needed to reduce the effect of Ib is %.1f Ω. \n ',Rcomp);
printf(' With Rcomp in the circuit, VoT = ');
VoT1 = (1+(Rf/R1))*Vios + Rf*Ios;
printf(' %.1f mV. \n ' , VoT1*10^3);
printf('\n It can be seen from this example that it is the input offset voltage which is more responsible\n for producing an output offset voltage compared to input bias current Ib or the input offset current Ios.');
// The answer provided in the textbook is wrong.
