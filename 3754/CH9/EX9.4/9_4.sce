clear//

//Variables

VS = 12.0                    //Source Voltage (in volts)
VT = 10.0                    //Terminal Voltage (in volts)
RL = 10.0                    //Load resistance (in ohm)

//Calculation

RS = RL*(VS / VT - 1)        //Internal Resistance (in ohm)

//Result

printf("\n The internal resistance of the source is  %0.3f  ohm.",RS)
