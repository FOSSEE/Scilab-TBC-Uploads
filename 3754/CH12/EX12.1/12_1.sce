clear//

//Variables

I0 = 2 * 10**-7              //Current (in Ampere)
VF = 0.1                     //Forward voltage (in volts)

//Calculation

I = I0 * (exp(40*VF)-1)      //Current through diode (in Ampere)

//Result

printf("\n Current throrough diode is  %0.2f  micro-Ampere.",I*10**6)
