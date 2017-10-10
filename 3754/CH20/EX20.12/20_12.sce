clear//

//Variables

VSmin = 8.0                    //Minimum source voltage (in volts)
VSmax = 12                     //Maximum source voltage (in volts)
RS = 2.2                       //Resistance (in kilo-ohm)
VZ = 5.0                       //Zener voltage (in volts)
RL = 10.0                      //Load resistance (in kilo-ohm)
VL = VZ                        //Voltage across load (in volts)

//Calculation

ISmin = (VSmin - VZ)/ RS       //Minimum value of input current (in milli-Ampere)
ISmax = (VSmax - VZ)/RS        //Maximum value of input current (in milli-Ampere)    
IL = VL / RL                   //Load current (in milli-Ampere)
IZmin = ISmin - IL             //Minimum Zener current (in milli-Ampere)
IZmax = ISmax - IL             //Maximum Zener current (in milli-Ampere)   

//Result

printf("\n Minimum value of Zener current is  %0.3f  mA.\nMaximum value of Zener current is  %0.3f  mA.",IZmin,IZmax)
