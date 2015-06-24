clc
//Initialization of variables
z1=35 //ft
z3=20 //ft
P1=30 //psi
g=32.2
z2=10 //ft
d2=4 //in
rho=1.94
be=20 //degrees
W=150 //lb
//calculations
V3= sqrt(2*g*(P1*144/55 + z1-z3))
Q=3.81 //cfs
V2=43.6 //fps
P2=55*(z3+ V3^2/(2*g) - z2 - V2^2/(2*g))/144
Fx=P2*%pi/4 *d2^2 - rho*55/62.4 *Q*(V3*cosd(be) - V2) 
Fy=rho*55/62.4 *Q*(V3*sind(be) ) + W
Fres=sqrt(Fx^2 + Fy^2)
Fsx=rho*Q*55/62.4*(V3*cosd(be) )
//calculations
printf("resultant force = %d lb",Fres)
printf("\n horizontal component of force = %d lb",Fsx)
