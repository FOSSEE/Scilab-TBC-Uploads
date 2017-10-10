clear//

//Variables

R2 = 100              //Resistance R2 (in ohm)
I = 0.3               //Current (in Ampere)
VT = 120              //Voltage (in volts)

//Calculation

RT = VT / I           //Total Resistance (in ohm)
R1 = RT - R2          //Resistance R1 (in ohm)
P1 = I**2 * R1        //Power dissipated by R1 (in watt)
P2 = I**2 * R2        //Power dissipated by R2 (in watt)

//Result

printf("\n The power dissipated by R1 is  %0.3f  W.\nThe power dissipated by R2 is  %0.3f  W.",P1,P2)
