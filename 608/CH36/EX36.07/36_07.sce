//Problem 36.07: A complex voltage v given by
// v = 60sinwt + 15sin(3wt + pi/4) + 10sin(5wt - pi/2) Volts
//is applied to a circuit and the resulting current i is given by
// i = 2sin(wt - pi/6) + 0.30sin(3wt - pi/12) + 0.1sin(5wt - 8pi/9) A
//Determine (a) the total active power supplied to the circuit, and (b) the overall power factor.

//initializing the variables:
Ia1 = 2; // in amperes
Ia3 = 0.3; // in amperes
Ia5 = 0.1; // in amperes
Va1 = 60; // in volts
Va3 = 15; // in volts
Va5 = 10; // in volts
Phii1 = -1*%pi/6; // in radians
Phii3 = -1*%pi/12; // in radians
Phii5 = -8*%pi/9; // in radians
Phiv1 = 0; // in radians
Phiv3 = %pi/4; // in radians
Phiv5 = -1*%pi/2; // in radians


//calculation:
//rms values;
I1 = Ia1/(2^0.5); // in amperes
I3 = Ia3/(2^0.5); // in amperes
I5 = Ia5/(2^0.5); // in amperes
V1 = Va1/(2^0.5); // in volts
V3 = Va3/(2^0.5); // in volts
V5 = Va5/(2^0.5); // in volts
//total power supplied,
P = V1*I1*cos(Phiv1 - Phii1) + V3*I3*cos(Phiv3 - Phii3) + V5*I5*cos(Phiv5 - Phii5)
//rms current
Irms = ((I1^2 + I3^2 + I5^2))^0.5
//rms voltage
Vrms = ((V1^2 + V3^2 + V5^2))^0.5
//overall power factor
pf = P/(Vrms*Irms)

printf("\n\n Result \n\n")
printf("\n(a)the total active power supplied to the circuit %.2f W",P)
printf("\n(b)overall power factor %.3f",pf)