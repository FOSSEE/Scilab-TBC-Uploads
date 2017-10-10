clear//

//Variables

gm = 5000.0 * 10**-6                    //Transconductance (in mho)
rd = 40.0 * 10**3                       //Resistance (in ohm)
R = 10.0 * 10**3                        //Resistance (in ohm)
fo = 1.0 * 10**3                        //Frequency (in Hertz) 
Av = 40.0                               //Voltage gain

//Calculation

C = 1/(2*%pi*(R)*6**0.5*fo)         //Capacitance (in Farad)
rL = Av / gm                            //a.c. load resistance (in ohm)     
RD = (rL * rd)/(rd-rL)                  //Drain resistance (in ohm)

//Result

printf("\n Value of capacitor is  %0.5f  micro-Farad.",C* 10**6)
printf("\n Value of drain resistance is  %0.3f  kilo-ohm.",RD * 10**-3)
