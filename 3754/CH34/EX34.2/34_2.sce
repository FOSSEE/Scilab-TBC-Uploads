clear//

//Variables

n = 0.62                                     //Ratio of peak-peak voltage to the supply voltage 
R = 5.0 * 10**3                              //Resistance (in ohm)
C = 0.05 * 10**-6                            //Capacitor (in Farad)

//Calculation

T = 2.3 * R * C * log10(1/(1-n))        //Time period of oscillation (in seconds)
f = 1/T                                      //Frequency of oscillation (in Hertz)   
f1 = 50.0                                    //New frequency (in Hertz)
T1 = 1/f1                                    //New time period of oscillation (in seconds)
R1 = T1 / (2.3 * C * log10(1/(1-n)))    //New Resistance (in ohm)
f2 = 50.0                                    //Another new frequency (in Hertz)
C2 = 0.5 * 10**-6                            //Capacitance (in Farad)    
T2 = 1/f2                                    //Another new time period (in seconds)
R2 = T2 / (2.3 * C2 * log10(1/(1-n)))   //New Resistance (in ohm)

//Result

printf("\n The time period and frequency of oscillation in case 1 is  %0.2f  ms and  %0.0f  Hz.",T*10**3,f)
printf("\n New value of R is  %0.0f  kilo-ohm.",R1 * 10**-3)
printf("\n Value of R with C is 0.5 micro-Farad is  %0.1f  kilo-ohm.",R2 * 10**-3)
