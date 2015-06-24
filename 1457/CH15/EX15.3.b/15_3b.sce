clc
//Initialization of variables
cv=0.98
g=32.2
h=1320 //ft
A=0.196 //ft^2
eta=0.85
ne=400
phi=0.45
//calculations
V=cv*sqrt(2*g*h)
Q=A*V/3
bhp=eta*62.4*Q*h/550
ne2=600
ns1=ne2*sqrt(bhp) /h^(5/4)
D=2500/ne2
Dj=sqrt(Q*4/V/%pi)
//results
printf("Jet diameter = %.3f ft",Dj)
printf("\n Specific speed = %.2f ",ns1)
printf("\n Pitch Diameter = %.2f ft",D)
printf("\n Operating speed = %d rpm",ne2)
