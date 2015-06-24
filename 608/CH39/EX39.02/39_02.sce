//Problem 39.02: A capacitor has a loss angle of 0.025 rad, and when it is connected across a 5 kV, 50 Hz supply, the power loss is 20 .W Determine the component values of the equivalent parallel circuit.

//initializing the variables:
del = 0.025; // in rad.
V = 5000; // in Volts
PL = 20; // power loss
f = 50; // in Hz

//calculation: 
//power loss = w*C*V^2*tan(del)
Cp = PL/(2*%pi*f*V*V*tan(del))
//for a parallel equivalent circuit,
//tan(del) = 1/(Rp*w*Cp)
Rp = 1/(2*%pi*f*Cp*tan(del))

printf("\n\n Result \n\n")
printf("\n capacitance C %.2E F and parallel resistance %.2E ohm.",Cp, Rp)