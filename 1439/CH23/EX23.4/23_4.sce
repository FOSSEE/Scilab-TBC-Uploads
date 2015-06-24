clc
//initialisation of variables
a= 43560 //ft^-2
t= 500 //min day^-1
E= 1000 //cal min^-1 ft^-2
m= 2 //tons acre^-1
E1= 4000 //cal gram^-1
M= 9.07*10^5 //gram ton^-1
//CALCULATIONS
Sh= a*t*E*365.26
Hs= m*M*E1
r= Hs/Sh
//RESULTS
printf ('fraction of solar energy stored = %.3f ',r)
