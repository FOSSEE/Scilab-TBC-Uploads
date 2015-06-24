//Problem 19.09: The input power to a 3-phase a.c. motor is measured as 5 kW. If the voltage and current to the motor are 400 V and 8.6 A respectively, determine the power factor of the system.

//initializing the variables:
P = 5000; // in Watts
IL = 8.6; // in amperes
VL = 400; // in Volts

//calculation:
//Power dissipated, P = VL*IL*(3^0.5)*cos(phi)  or  P = 3*Ip*Ip*Rp)
pf = P/(VL*IL*(3^0.5))

printf("\n\n Result \n\n")
printf("\n power factor is %.3f",pf)