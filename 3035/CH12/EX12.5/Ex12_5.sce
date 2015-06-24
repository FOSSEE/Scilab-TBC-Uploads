

// Variable Declaration
R = 74.0*10**-6         //Resistance of overhead line(ohm/meter)
L = 1.212*10**-6        //Inductance of overhead line(H/meter)
C = 9.577*10**-12       //Capacitance of overhead line(F/meter)


// Calculation Section
Z_0 = (L/C)**0.5        //Surge impedance of line(ohm)
a = R/(2*Z_0)
x_1 = log(2)/a     //Distance to be travelled(m)


// Result Section
printf('The distance the surge must travel to attenuate to half value = %.2e meter = %.2e km' ,x_1,x_1*10**-3)
