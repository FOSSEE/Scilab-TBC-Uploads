//Problem 42.13: A filter network comprising n identical sections passes signals of all frequencies up to 500 kHz and provides a total delay of 9.55 μs. If the nominal impedance of the circuit into which the filter is inserted is 1 kohm, determine (a) the values of the elements in each section, and (b) the value of n.

//initializing the variables:
fc = 500000; // in Hz
t1 = 9.55E-6; // in secs
R0 = 1000; // in ohm

//calculation:
//for a low-pass filter section, capacitance
C = 1/(%pi*R0*fc)
//inductance
L = R0/(%pi*fc)
//time delay
t2 = (L*C)^0.5
//number of cascaded sections required
n = t1/t2

printf("\n\n Result \n\n")
printf("\n for low-pass T section inductance is %.2E H and capacitance is %.2E F",L/2,C)
printf("\n for low-pass pi section inductance is %.2E H and capacitance is %.2E F",L,C/2)
printf("\nnumber of cascaded sections required is %.0f",n)