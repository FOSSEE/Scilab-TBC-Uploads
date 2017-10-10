clear//

//Variables

VSmin = 19.5                            //Minimum source voltage (in volts)
VSmax = 22.5                            //Maximum source voltage (in volts)
RL = 6.0 * 10**3                        //Load resistance (in ohm)
VZ = 18.0                               //Zener voltage (in volts)
IZmin = 2.0 * 10**-6                    //Minimum zener current (in Ampere)
PZmax = 60.0 * 10**-3                   //Maximum power dissipation (in watt)
rZ = 20.0                               //Zener resistance (in ohm)
VL = VZ                                 //Voltage across load resistance (in volt)

//Calculation

IZmax = (PZmax / rZ)**0.5                //Maximum value of zener current (in milli-Ampere)
IL = VL / RL                             //Load current (in milli-Ampere)
RSmax = (VSmin - VZ) / (IZmin + IL)      //Maximum value of regulating resistance (in kilo-ohm)  
RSmin = (VSmax - VZ) / (IZmax + IL)      //Minimum value of regulating resistance (in kilo-ohm) 

//Result

printf("\n Magnitude of regulating resistance should be between  %0.1f  ohm and  %0.0f  ohm.",RSmin,RSmax)
