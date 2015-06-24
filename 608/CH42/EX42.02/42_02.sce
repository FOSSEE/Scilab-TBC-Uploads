//Problem 42.02: A filter section is to have a characteristic impedance at zero frequency of 600 ohm and a cut-off frequency at 5 MHz. Design (a) a low-pass T section filter, and (b) a low-pass pi section filter to meet these requirements.

//initializing the variables:
R0 = 600; // in ohm
fc = 5E6; // in Hz

//calculation:
//capacitance
C = 1/(%pi*R0*fc)
//inductance
L = R0/(%pi*fc)

printf("\n\n Result \n\n")
printf("\n A low-pass T section filter capcitance is %.2E farad and inductance is%.2E Henry",C, L/2)
printf("\n A low-pass pi section filter capcitance is %.2E farad and inductance is%.2E Henry",C/2, L)