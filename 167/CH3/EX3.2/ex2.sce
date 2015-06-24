//ques2
//Temperature of Saturated Vapor in a Cylinder
clc
Tsat=280.99;//Saturated temperature in F @ 50psia from table A-5E
printf("Saturated Temperature = %.2f F \n",Tsat);
v=8.5175;//vg saturated volume of vapor in ft^3/lbm table A-5E
V=2;//Total Volume in ft^3
m=V/v;//mass in lbm
printf('Mass of the sample is = %.3f lbm ',m);
