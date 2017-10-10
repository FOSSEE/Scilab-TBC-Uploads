clear//

//Variables

T1 = 1.0 * 10**-6                //Pulse width (in seconds)
f = 100.0 * 10**3                //Frequency (in Hertz)
R1=10.0*10**3;R2=10.0*10**3;

//Calculation

T = 1/f                          //Time period of oscillation (in seconds) 
C1 = T1 / 0.69 / R1              //Capacitance (in Farad)
T2 = T - T1                      //Time period (in seconds) 
C2 = T2 / 0.69 / R2              //Capacitance (in Farad)

//Result

printf("\n Value of C1 capacitor is  %0.0f  pico-Farad.\nValue of C2 capacitor is  %0.0f  pico-Farad.",C1*10**12,C2*10**12)
