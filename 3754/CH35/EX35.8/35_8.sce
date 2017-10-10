clear//

//Variables

R1 = 1.0 * 10**3                   //Resistance (in ohm)
R2 = 2.0 * 10**3                   //Resistance (in ohm)
V1 = 1.0                           //Voltage (in volts)

//Calculation

ACL = R2 / R1                      //Closed loop voltage gain   
vo = ACL * V1                      //Output voltage (in volts)

//Result

printf("\n Output voltage of the inverting amplifier is  %0.3f  V.",vo)
