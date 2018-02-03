// Exa 1.1

clc;
clear;

// Given

I = 10; // Current in Amp
dI = 0.1; // Probability of error in I (Amp)
R = 100; // Resistor value in Ohms
dR = 2; // Probability of error in R (Ohms)


// Solution

printf('The power dissipated P = I^2*R \n');

printf(' The probable error can be determined with the help of Erss(Root Sum Square) Formula, i.e Error = sqrt((dR*I^2)^2 + (2*I*R*dI)^2)  \n');

PE = sqrt((dR*I^2)^2 + (dI*2*I*R)^2); // Probable error
P = I^2 * R;

printf(' Error = %d W \n',round(PE));
printf(' Power dissipated P = %d kW \n',P*10^-3);
