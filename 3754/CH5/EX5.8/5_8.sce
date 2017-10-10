clear//

//Variables

R1 = 0.6                                    //Resistance (in ohm)
R2 = 0.6                                    //Resistance (in ohm)
R3 = 0.8                                    //Resistance (in ohm)
R4 = 0.8                                    //Resistance (in ohm)

//Calculation

Rth = R3 + R4*(R1 + R2)/(R4 + (R1 +R2))     //Thevenin's resistance (in ohm)

//Result

printf("\n The value of Rth is  %0.3f  ohm.",Rth)
