//Problem 40.11:The charging current for an 800 m run of isolated twin line is not to exceed 15 mA. The voltage between the lines is 10 kV at 50 Hz. If the line is air-insulated, determine (a) the maximum value required for the capacitance per metre length, and (b) the maximum diameter of each conductor if their distance between centres is 1.25 m.

//initializing the variables:
e0 = 8.85E-12; 
er = 1;
I = 0.015; // in Amperes
d = 1.25; // in m
r = 800; // in m
f = 50; // in Hz
V = 10000; // in Volts

//calculation:
//capacitance
C = I/(2*%pi*f*V)
//required maximum value of capacitance
Cmax = C/r
//maximum diameter of each conductor
D = 2*d/(%e^(%pi*e0*er/Cmax))

printf("\n\n Result \n\n")
printf("\n required maximum value of capacitance is %.2E F/m",Cmax)
printf("\nthe maximum diameter of each conductor is %.4f m",D)