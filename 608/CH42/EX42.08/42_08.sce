//Problem 42.08: A high-pass T section filter has a cut-off frequency of 500 Hz and a nominal impedance of 600 ohm. Determine the frequency at which the characteristic impedance of the section is (a) zero, (b) 300 ohm, (c) 590 ohm.

//initializing the variables:
R0 = 600; // in ohm
fc = 500; // in Hz
Z1 = 0; // in ohm
Z2 = 300; // in ohm
Z3 = 590; // in ohm

//calculation:
//frequency
f1 = fc
f2 = fc/(1 - (Z2/R0)^2)^0.5
f3 = fc/(1 - (Z3/R0)^2)^0.5

printf("\n\n Result \n\n")
printf("\nfrequency at which the characteristic impedance of the section is 0 ohm is %.0f Hz and 300 Ohm is %.1f Hz and 590 ohm is %.0f Hz ",f1,f2,f3)