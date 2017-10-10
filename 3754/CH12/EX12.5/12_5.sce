clear//

//Variables

rb = 2               //bulk resistance (in ohm)
IF = 12 * 10**-3     //FOrward current (in Ampere)

//Calculation

VF = 0.6 + IF * rb   //Voltage drop (in volts)

//Result

printf("\n Voltage drop across a silicon diode is  %0.3f  V.",VF)
