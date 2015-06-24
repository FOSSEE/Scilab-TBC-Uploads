//Problem 18.06: Design an inverting amplifier to have a voltage gain of 40 dB, a closed-loop bandwidth of 5 kHz and an input resistance of 10 kohm.

//initializing the variables:
Vg = 40; // in dB
bf = 5000; // in Hz
Ri = 10000; // in ohms

//calculation:
A = 10^(Vg/20)
Rf = A*Ri
f = A*bf

printf("\n\n Result \n\n")
printf("\n the voltage gain is %.0f, Rf = %.0f ohm and frequency = %.0f Hz",A, Rf, f)