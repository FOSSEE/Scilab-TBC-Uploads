// Exa 2.1

clc;
clear;

// Given data

// An amplifier( Refer Fig. 2.5(a) )
Acl = -10; // Closed loop gain
Ri = 10 * 10^3; // Input resistance of amplifier(Ω)

// Solution

// Since it is mentioned to design an amplifier, it means to calculate values for Rf(Feedback resistance) and R1.
disp("Referring Fig. 2.5(a),  we choose R1 as 10 kΩ i.e equal to input resistance of amplifier.");
R1 = Ri;
// Acl = -1 * Rf/R1;
// Therefore;
Rf= - Acl * Ri;
printf(' The calculated value of Rf(Feedback resistane) is Rf = %d kΩ. \n',Rf/1000);
