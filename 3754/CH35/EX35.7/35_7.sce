clear//

//Variables

R1 = 1.0 * 10**3               //Resistance (in volts)
R2 = 10.0 * 10**3              //Resistance (in volts)
vinmin = 0.1                   //Input voltage minimum (in volts)
vinmax = 0.4                   //Input voltage maximum (in volts)

//Calculation

ACL = R2 / R1                  //Closed loop voltage gain
Voutmin = ACL * vinmin         //Minimum output voltage (in volts)
Voutmax = ACL * vinmax         //Maximum output voltage (in volts)

//Result

printf("\n The value of output voltage increases from  %0.3f  V to  %0.3f  V.",Voutmin,Voutmax)
