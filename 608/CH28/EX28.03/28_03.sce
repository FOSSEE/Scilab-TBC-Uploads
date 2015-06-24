//Problem 28.03: A coil having inductance L is connected in series with a variable capacitor C. The circuit possesses stray capacitance CS which is assumed to be constant and effectively in parallel with the variable capacitor C. When the capacitor is set to 1000 pF the resonant frequency of the circuit is 92.5 kHz, and when the capacitor is set to 500 pF the resonant frequency is 127.8 kHz Determine the values of (a) the stray capacitance CS, and (b) the coil inductance L.

//initializing the variables:
C1 = 1000e-12; // IN fARADS
C2 = 500e-12; // IN fARADS
fr1 = 92500; // in Hz
fr2 = 127800; // in Hz

//calculation:
//For a series R–L–C circuit the resonant frequency fr is given by:
//fr = 1/(2pi*(L*C)^2)
Cs = ((C1 - C2)/((fr2/fr1)^2 - 1)) - C2
L = 1/((C1 + Cs)*(2*%pi*fr1)^2)

printf("\n\n Result \n\n")
printf("\n (a)stray capacitance, Cs is %.2E F ",Cs)
printf("\n (b)inductance, L is %.2E H ",L)