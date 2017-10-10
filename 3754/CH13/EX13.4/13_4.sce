clear//

//Variables

VZ = 4.7                          //Zener voltage (in volts)
rZ = 15                           //Resistance (in ohm)
IZ = 20 * 10**-3                  //Current (in Ampere)

//Calculation

VZ1 = VZ + IZ * rZ                //Terminal voltage of a zener diode (in volts)
 
//Result

printf("\n Terminal voltage of the zener diode is  %0.3f  V.",VZ1)
