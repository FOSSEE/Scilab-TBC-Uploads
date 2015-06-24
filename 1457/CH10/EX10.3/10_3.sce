clc
//Initialization of variables
nu=0.0000166 //ft^2 /s
U=5.06 //fps
L=50 //ft
g=32.2
dia=10 //ft
//calculations
R=L*U/nu
Cf=0.0028
Ff=Cf*64/g *U^2 /2 *%pi*dia*L
Rx=R/L
ec=26*nu/U *Rx^(0.25)
Rx2=Rx*L/2
T02=0.0587*U^2 /2 /(Rx2)^(0.2)
delta2=60*nu/sqrt(T02)
//results
printf("Friction drag = %d lb",Ff)
printf("\n Critical roughness = %.4f ft",ec)
printf("\n height of roughness = %.4f ft",delta2)
