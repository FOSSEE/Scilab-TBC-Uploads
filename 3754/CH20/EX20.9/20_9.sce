clear//

//Variables

VZ = 10.0                                   //Zener voltage (in volts)
RS = 1.0                                    //Series Resistance (in kilo-ohm)   
RL = 2.0                                    //Load Resistance (in kilo-ohm)
VSmin = 22.0                                //Minimum source voltage (in volts) 
VSmax = 40                                  //Maximum source voltage (in volts) 

//Calculation

IL = VZ / RL                                //Load current (in milli-Ampere)
IZmax = (VSmax - VZ) / RS - IL              //Maximum value of zener current (in milli-Ampere)
IZmin = (VSmin - VZ) / RS - IL              //Minimum value of zener current (in milli-Ampere)

//Result

printf("\n Maximum value of zener current is  %0.3f  mA.\nMinimum value of zener current is  %0.3f  mA.",IZmax,IZmin)
