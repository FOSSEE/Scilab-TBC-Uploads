clear//

//Variables

R = 100.0 * 10**3                                //Resistance (in ohm)
C = 0.4 * 10**-6                                 //Capacitance (in Farad)
n = 0.57                                         //Ratio of peak-peak voltage to the supply voltage 

//Calculation

f = 1 / (2.3 * R * C * log10(1/(1-n)))      //Frequency (in Hertz) 

//Result

printf("\n Frequency of sweep is  %0.2f  Hz.",f)
