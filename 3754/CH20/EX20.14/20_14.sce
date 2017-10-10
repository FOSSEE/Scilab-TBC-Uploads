clear//

//Variables

RS = 500.0                                    //Series resistance (in ohm)
RL = 1.0                                      //Load resistance (in kilo-ohm) 
VZ = 10.0                                     //Zener voltage (in volts)
IZmin = 5.0                                   //Minimum Zener current (in milli-Ampere)
IZmax = 55.0                                  //Maximum Zener current (in milli-Ampere)   

//Calculation

IL = VZ / RL                                  //Load current (in milli-Ampere) 
VSmin = (IL + IZmin) * RS * 10**-3 + VZ       //Minimum value of input voltage (in volts)
VSmax = (IL + IZmax) * RS * 10**-3 + VZ       //Maximum value of input voltage (in volts)

//Result

printf("\n The minimum value of voltage level at input is  %0.3f  V and the maximum is  %0.3f  V.",VSmin,VSmax)
