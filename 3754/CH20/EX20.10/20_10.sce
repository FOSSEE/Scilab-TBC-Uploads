clear//

//Variables

VZ = 10.0                                //Zener voltage (in volts)
VSmin = 13.0                             //Minimum source voltage (in volts)
VSmax = 16.0                             //Maximum source voltage (in volts)
ILmin = 10.0                             //Minimum load current (in milli-Ampere)
ILmax = 85.0                             //Maximum load current (in milli-Ampere)
IZmin = 15.0                             //Minimum zener current (in milli-Ampere)

//Calculation

RSmax = (VSmin - VZ)/ (IZmin + ILmax)    //Maximum value of RS (in kilo-ohm)
IZmax = (VSmax - VZ)/ RSmax - ILmin      //Maximum zener current (in milli-Ampere)
PZmax = IZmax * 10**-3 * VZ              //Maximum power dissipation in zener (in watt)

//Result

printf("\n Maximum value of RS is  %0.3f  ohm.\nMaximum power dissipation be the zener diode is  %0.3f  W.",RSmax*10**3,PZmax)
