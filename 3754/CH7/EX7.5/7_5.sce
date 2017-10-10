clear//

//Variables

L1 = 40.0                      //Inductance (in micro-Henry)
L2 = 80.0                      //Inductance (in micro-Henry)
M = 11.3                       //Mutual Inductance (in micro-Henry)

//Calculation

k = M/(L1 * L2)**0.5           //Coefficient of Coupling 

//Result

printf("\n Coefficient of coupling is  %0.2f .",k)
