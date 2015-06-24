//Problem 42.14: A filter network consists of 8 sections in cascade having a nominal impedance of 1 kohm. If the total delay time is 4 μs, determine the component values for each section if the filter is (a) a low-pass T network, and (b) a high-pass pi network.

//initializing the variables:
n = 8; // sections in cascade
R0 = 1000; // in ohm
t1 = 4E-6; // in secs


//calculation:
//time delay
t2 = t1/n
//capacitance
C = t2/R0
//inductance
L = t2*R0

printf("\n\n Result \n\n")
printf("\n for low-pass T section inductance is %.2E H and capacitance is %.2E F",L/2,C)
printf("\n for high-pass pi section inductance is %.2E H and capacitance is %.2E F",2*L,C)