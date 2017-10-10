clear//

//Variables

R1 = 10.0 * 10**3                     //Resistance (in ohm)
C1 = 0.01 * 10**-6                    //Capacitor (in Farad)

//Calculation

f2 = 1.0/(2*%pi*R1*C1)            //Frequency (in Hertz)
fmax = f2 / 10.0                      //Maximum linear operating freqeuncy (in Hertz)

//Result

printf("\n Cut-off frequency is  %0.1f  Hz.",f2)
printf("\n Maximum linear operating frequency is  %0.0f  Hz.",fmax)
