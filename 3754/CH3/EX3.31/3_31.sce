clear//

//Variables

R = 750.0               //Resistance (in ohm)
I = 32.0                //Current (in milliAmpere)               

//Calculation

P = I**2 * 10**-6 * R   //Power (in watt)

//Result

printf("\n Power consumed by relay coil is  %0.3f  mW.",P*1000)
