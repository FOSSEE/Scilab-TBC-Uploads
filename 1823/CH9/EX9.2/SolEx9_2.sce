//derive an exact formula for the gain of a practical inverting op amp.
//Example 9.2 page no 268
clear
clc
Aol=-10^4
Rl=1            //kΩ
Rf=10           //kΩ
Rd=1            //kΩ
Av=(Aol/(1+(Rl/Rf)*(1-Aol)+(Rl/Rd)))
printf("\n The value of Av=%0.3f ",Av)
