clear//

//Variables

VF = 0.22                      //Forward voltage (in volts)
T = 298.0                      //Temperature (in kelvin)
I0 = 10**-3                    //Current (in Ampere)
n = 1

//Calculation

VT = T/11600                   //Volt equivalent of temperature (in volts)
I = I0*(exp(VF/(n*VT))-1)      //Diode Current (in Ampere) 

//Result

printf("\n Diode current is  %0.1f  A.",I)
