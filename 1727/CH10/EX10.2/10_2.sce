clc
//Initialization of variables
u=2 //m/s
x=0.15 //m
nu=1.5e-5 //m^2/s
B=0.5 //m
rho=1.22 //kg/m^3
//calcualtions
Rx=u*x/nu
delta= 4.91*x/sqrt(Rx)
deltas=1.729*x/sqrt(Rx)
Cf=1.328/sqrt(Rx)
Ff=Cf*0.5*rho*u^2 *2*B*x
//results
printf("Boundary layer thickness = %.2f cm",delta*100)
printf("\n Displacement thickness = %.2f cm",deltas*100)
printf("\n Average drag coeffcient = %.4f",Cf)
printf("\n Drag force = %.4f N",Ff)
