clear//

//Variables

gm = 2.0 * 10**-3                      //Transconductance (in Ampere per volt)
rd = 40.0 * 10**3                      //Resistance (in ohm)
RD = 20.0 * 10**3                      //Drain resistance (in ohm)
RG = 100.0 * 10**6                     //Gate resistance (in ohm)    

//Calculation

rL = RD * rd / (RD + rd)               //a.c. equivalent resistance (in ohm)
Av = -gm * rL                          //Voltage gain   
R1i = RG                               //input resistance (in ohm)
R1o = rL                               //output resistance (in ohm) 

//Result

printf("\n Voltage gain is  %0.1f .",Av)
printf("\n Input resistance is  %0.3f  Mega-ohm.\nOutput resistance is  %0.1f  kilo-ohm.",R1i*10**-6,R1o*10**-3)
