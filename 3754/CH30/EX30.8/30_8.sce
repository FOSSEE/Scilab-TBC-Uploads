clear//

//Variables

gm = 4.0 * 10**-3                      //Transconductance (in Siemen)
RD = 1.5 * 10**3                       //Drain resistance (in ohm) 

//Calculation

Av = -gm * RD                          //Voltage gain    

//Result

printf("\n Voltage gain is  %0.3f .",Av)
