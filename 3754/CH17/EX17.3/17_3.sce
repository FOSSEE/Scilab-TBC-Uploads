clear//

//Variables

VD = 0.7                     //Voltage (in volts)
n = 0.75                     //Intrinsic stand-off ratio
VBB = 12                     //Base Voltage (in volts)

//Calculation

VP = n * VBB + VD            //Peak-point voltage (in volts)

//Result

printf("\n Peak - point voltage of the circuit is  %0.3f  V.",VP)
