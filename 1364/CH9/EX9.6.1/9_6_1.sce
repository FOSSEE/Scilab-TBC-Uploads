clc
//initialisation of variables
s= 0.8
l= 1//ft
r= 8
//CALCULATIONS
Hw= (s/r)^(2/3)*l
Qw= 1.5*Hw^(2.5)
R= (1/Hw)^2.5
Q= Qw*R
//RESULTS
printf (' depth of water= %.3f ft',Hw)
printf (' \n rate of flow of fluid= %.1f ft^3/sec',Q)
