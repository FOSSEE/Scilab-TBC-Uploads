clear//

//Variables

R1 = 2.0 * 10**3         //Resistance (in ohm)
R2 = 20.0 * 10**3        //Resistance (in ohm)
C1 = 0.01 * 10**-6       //Capacitance (in Farad)
C2 = 0.05 * 10**-6       //Capacitance (in Farad)

//Calculation

T = 0.69*(R1*C1 + R2*C2) //Time periode of oscillation (in seconds)
f = 1/T                  //Frequency of oscillation (in Hertz)

//Result

printf("\n Time period of oscillation is  %0.1f  ms.\nFrequency of oscillation is  %0.2f  kHz.",T*10**3,f*10**-3)
