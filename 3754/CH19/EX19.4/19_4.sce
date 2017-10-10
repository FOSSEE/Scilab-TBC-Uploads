clear//

//Variables

Vdc = 30.0                    //Average value of voltage (in volts)
RL = 600.0                    //Load resistance (in ohm)
Rf = 25.0                     //forward resistance (in ohm)

//Calculation

Idc = Vdc / RL                //Average value of load current (in Ampere)
Im = (%pi * Idc)   //Maximum value of load current (in Ampere) 

Vinmax = Im * (Rf + RL)       //Maximum a.c. voltage required at the input (in volts)

//Result

printf("\n Maximum a.c. voltage required at the input is  %0.3f  V.",Vinmax)
