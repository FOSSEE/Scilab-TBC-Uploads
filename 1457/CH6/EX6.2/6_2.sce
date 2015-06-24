clc
//Initialization of variables
V1x=100 //ft/sec
V2x=0.866*95
V1y=0
V2y=.5*95
A1=0.0218 //ft^2
//calculations
Q=A1*V1x
rho=1.94
Fx=rho*Q*(V2x-V1x)
Fxr=-Fx
Fy=rho*Q*(V2y-V1y)
//results
printf("Horizontal force on the blade = %.1f lb",Fxr)
printf("\n Vertical force on the blade = %d lb",Fy)
