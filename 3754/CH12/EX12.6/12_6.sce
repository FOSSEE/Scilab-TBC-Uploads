clear//

//Variables

T = 398.0                    //Temperature (in kelvin)
I0 = 30 * 10**-6             //Reverse saturation current (in Ampere)
V = 0.2                      //Voltage (in volts)

//Calculation

VT = T/11600                 //Volt equivalent of temperature (in volts)
I = I0 * (exp(V/VT)-1)       //Diode current (in Ampere)
rac = VT/I0 * exp(-V/VT)     //dynamic resistance in forward direction (in ohm)
rac1 = VT/I0 * exp(V/VT)     //dynamic resistance in reverse direction (in ohm)

//Result

printf("\n Dynamic resistance in forward direction is  %0.2f  ohm.\nDynamic resistance in backward direction is  %0.3f  Mega-ohm.",rac,rac1/10**6)
