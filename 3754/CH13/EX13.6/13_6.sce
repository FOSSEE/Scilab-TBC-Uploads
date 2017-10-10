clear//

//Variables

T = 0.04 * 10**-6                     //Time period (in seconds)

//Calculation

f = 1/T                               //Frequency (in Hertz)
f = f * 10**-6                        //Frequency (in Mega-Hertz)
f5 = 5 * f                            //%th - harmonic (in Mega-Hertz)

//Result

printf("\n Frequency of 5th harmonic is  %0.3f  MHz.",f5)
