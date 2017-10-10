clear//

//Variables

gm = 2500.0 * 10**-6                   //Transconductance (in Amper per volt)
RD = 10.0 * 10**3                      //Drain resistance (in ohm)
RS = 2.0 * 10**3                       //Source resistance (in ohm)

//Calculation

Av = gm * RD                           //Voltage gain 
R1i = RS * 1/gm /(RS + 1/gm)           //Input resistance (in ohm)

//Result

printf("\n Amplifier voltage gain  is  %0.3f .\nInput resistance is  %0.0f  ohm.",Av,R1i)
