clear//

//Variables

VS = 24.0                        //Source voltage (in volts)
RS = 500.0                       //Series resistance (in ohm)
VZ = 12.0                        //Zener Voltage (in volts)
IZmin = 3.0                      //Minimum Zener current (in milli-Ampere)
IZmax = 90.0                     //Maximum Zener current (in milli-Ampere)
rZ = 0.0                         //Zener resistance (in ohm)

//Calculation

IS = (VS - VZ) / RS              //Current through RS (in Ampere)
ILmax = IS - IZmin * 10**-3      //Maximum value of load Current (in Ampere) 
RLmin = VZ / ILmax               //Minimum value of Load resistance (in ohm) 

//Result

printf("\n Minimum value of load resistance is  %0.0f  ohm.",RLmin)
