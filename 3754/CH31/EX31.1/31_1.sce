clear//

//Variables

fo = 22.0 * 10**3                         //Frequency (in Hertz)
C = 2.0 * 10**-9                          //Capacitance (in Farad)

//Calculation

L = (0.159/fo)**2/C                       //Inductance (in Henry)      
 
//Result

printf("\n Inductance is  %0.3f  H.",L)
