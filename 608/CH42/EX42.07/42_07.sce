//Problem 42.07: A low-pass T section filter having a cut-off frequency of 15 kHz is connected in series with a high-pass T section filter having a cut-off frequency of 10 kHz. The terminating impedance of the filter is 600 ohm.(a) Determine the values of the components comprising the composite filter.

//initializing the variables:
R0 = 600; // in ohm
fc1 = 15000; // in Hz
fc2 = 10000; // in Hz

//calculation:
//capacitance
C1 = 1/(%pi*R0*fc1)
//inductance
L1 = R0/(%pi*fc1)
//capacitance
C2 = 1/(4*%pi*R0*fc2)
//inductance
L2 = R0/(4*%pi*fc2)

printf("\n\n Result \n\n")
printf("\n A low-pass T section filter capcitance is %.2E farad and inductance is%.2E Henry",C1, L1/2)
printf("\n A high-pass pi section filter capcitance is %.2E farad and inductance is%.2E Henry",2*C2, L2)