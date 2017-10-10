clear//

//Variables

Slew_rate = 0.5 * 10**6                  //Slew rate (in volt per second)
Vpk = 100.0 * 10**-3                     //Peak-to-peak voltage (in volts)

//Calculation

fmax = Slew_rate / (2 * %pi * Vpk)   //Maximum operating frequency (in Hertz)

//Result

printf("\n The maximum operating frequency for the amplifier is  %0.0f  kHz.",fmax * 10**-3)
