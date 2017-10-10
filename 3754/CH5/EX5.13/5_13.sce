clear//

//Variables

R1 = 5.0                      //resistance (in ohm)
R2 = 2.0                      //resistance (in ohm)
R3 = 3.0                      //resistance (in ohm)

//Calculation

Req = R2 * R3 / (R2 + R3)   //Equivalent resistance (in ohm)
RL = R1 + Req

//Result

printf("\n Load resistance is  %0.3f  ohm.",RL)
