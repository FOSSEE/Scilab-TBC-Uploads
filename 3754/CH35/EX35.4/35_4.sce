clear//

//Variables

Slew_rate1 = 0.5 * 10**6                  //Slew rate (in volt per second)
Slew_rate2 = 13.0 * 10**6                 //Slew rate (in volt per second)
Vpk = 10.0                                //Peak-to-peak voltage (in volts)

//Calculation

fmax = Slew_rate1 / (2 * %pi * Vpk)   //Maximum operating frequency1 (in Hertz)
fmax1 = Slew_rate2 / (2 * %pi * Vpk)  //Maximum operating frequency2 (in Hertz)

//Result

printf("\n The maximum operating frequency for TLO 741 is  %0.3f  kHz.\nThe maximum opearing frequency for TLO 81 is  %0.1f  kHz.",fmax*10**-3,fmax1*10**-3)
