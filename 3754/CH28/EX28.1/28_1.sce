clear//

//Variables

L = 150.0 * 10**-6          //Inductance (in Henry)
C = 100.0 * 10**-12         //Capacitance (in Farad)

//Calculation

fo = 0.159 / (L * C)**0.5   //Resonant frequency (in Hertz)

//Result

printf("\n The resonant frequency is  %0.1f  MHz.",fo * 10**-6)
