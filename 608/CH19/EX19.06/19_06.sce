//Problem 19.06: Three identical capacitors are connected in delta to a 415 V, 50 Hz, 3-phase supply. If the line current is 15 A, determine the capacitance of each of the capacitors.

//initializing the variables:
IL = 15; // in Amperes
VL = 415; // in Volts
f = 50; // in Hz

//calculation:
//For a delta connection
Ip = IL/(3^0.5)   //phase current
Vp = VL
//Capacitive reactance per phase
Xc = Vp/Ip
C = 1/(2*%pi*f*Xc)

printf("\n\n Result \n\n")
printf("\n capacitance is %.3E F",C)