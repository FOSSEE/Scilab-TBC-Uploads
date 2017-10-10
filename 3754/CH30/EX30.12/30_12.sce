clear//

//Variables

RD = 100.0 * 10**3                     //Drain resistance (in ohm)              
gm = 1.6 * 10**-3                      //Transconductance (in Ampere per volt)
rd = 44.0 * 10**3                      //Resistance (in ohm)
Cgs = 3.0 * 10**-12                    //Capacitance gate-to-source (in Farad)
Cds = 1.0 * 10**-12                    //Capacitance drain-to-source (in Farad)
Cgd = 2.8 * 10**-12                    //Capacitance gate-to-drain (in Farad) 

//Calculation

rL = RD * rd / (RD + rd)               //a.c. load resistance (in ohm)  
Av = -gm * rL                          //Voltage gain 

//Result

printf("\n Voltage gain is  %0.1f ",Av)
