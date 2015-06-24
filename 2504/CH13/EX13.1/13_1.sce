clc
//initialisation of variables
clear
nop= 0.88
nom= 0.88
Pm= 75 //hp
p= 3000 //lb/in^2
d= 54.5 //lbm/ft^3
u= 1.05*10^-4
d1= 0.5 //in
g= 32.2 //ft/sec^2
//CALCULATIONS
nt= (7/11)*nop*nom
pp= Pm/nt
Q= nop*pp*550/(p*144)
Re= 4*d*Q/(%pi*u*(d1/12)*g)
//RESULTS
printf ('n trans = %.3f ',nt)
printf ('\n Input power = %.f hp',pp)
printf ('\n Flow rate = %.3f ft^3/sec',Q)
printf ('\n Reynolds Number = %.1e ',Re)
