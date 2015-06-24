//Problem 42.04: A low-pass  section filter has a nominal impedanc of 600 ohm and a cut-off frequency of 2 MHz. Determine the frequency at which the characteristic impedance of the section is (a) 600 ohm (b) 1 kohm (c) 10kohm.

//initializing the variables:
R0 = 600; // in ohm
fc = 2E6; // in Hz
Z1 = 600; // in ohm
Z2 = 1000; // in ohm
Z3 = 10000; // in ohm

//calculation:
//frequency
f1 = fc*(1 - (R0/Z1)^2)^0.5
f2 = fc*(1 - (R0/Z2)^2)^0.5
f3 = fc*(1 - (R0/Z3)^2)^0.5

printf("\n\n Result \n\n")
printf("\nfrequency at which the characteristic impedance of the section is 600 ohm is %.0f Hz and 1000 Ohm is %.2E Hz and 10000 ohm is %.3E Hz ",f1,f2,f3)