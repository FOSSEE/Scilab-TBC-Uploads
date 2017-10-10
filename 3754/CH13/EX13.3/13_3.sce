clear//

//Variables

IZ1 = 20                       //Reverse current (in milli-Ampere)
IZ2 = 30                       //Reverse current (in milli-Ampere)
VZ1 = 5.6                      //Zener voltage (in volts)
VZ2 = 5.65                     //Zener voltage (in volts)

//Calculation

dIZ = IZ2 - IZ1                //Change in reverse current (in milli-Ampere)
dVZ = VZ2 - VZ1                //Change in zener voltage (in volts)
rZ = dVZ / (dIZ * 10**-3)      //Resistance of device (in ohm)

//Result

printf("\n Resistance of the zener diode is  %0.3f  ohm.",rZ)
