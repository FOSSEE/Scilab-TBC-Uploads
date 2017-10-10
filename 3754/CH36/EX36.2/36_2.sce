clear//

//Variables

R1 = 1.0 * 10**3                //Resistance (in ohm)
Rf = 51.0 * 10**3               //Resistance (in ohm)
Cf = 0.01 * 10**-6               //Capacitance (in Farad)

//Calculation

f = 1.0/(2*%pi*Rf*Cf)       //Frequency (in Hertz)
fmin = 10* f                    //Minimum frequency required (in Hertz)     

//Result

printf("\n The cut-off frequency of an integrator circuit is  %0.0f  Hz.",f)
printf("\n Minimum non-linear operating frequency is  %0.0f  Hz.",fmin)
