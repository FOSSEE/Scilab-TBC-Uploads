clear//

//Variables

gm = 2.0 * 10**-3                           //Transconductance (in Ampere per volt)
rd = 10.0 * 10**3                           //Resistance (in ohm)
RD = 50.0 * 10**3                           //Drain resistance (in ohm)

//Calculation

rL = RD * rd / (RD + rd)                    //a.c. equivalent resistance (in ohm)
Av = - gm * rL                              //Voltage gain

//Result

printf("\n Voltage gain is  %0.2f .",Av)
