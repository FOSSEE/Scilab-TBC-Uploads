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
Q=A*V
bhp=eta*62.4*Q*h/550
ns=ne*sqrt(bhp) /h^(5/4)
u=phi*sqrt(2*g*h)
D=u*60/%pi/ne
//results
printf("Pitch diameter = %.2f ft",D)
