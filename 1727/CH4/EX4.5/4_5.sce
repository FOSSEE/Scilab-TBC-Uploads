clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
V=50 //m/s
u=20 //m/s
A=6/10^4 //m^2
angle=180 //degrees
//calculations
Vr=V-u
rq=rho*A*Vr
Rx=-rq*(Vr*cosd(angle) - Vr)
Rx2=-rho*A*V*(Vr*cosd(angle) -Vr)
power=Rx2*u
//results
printf("Force exetred on fluid = %d N",Rx)
printf("\n Force transferred in case 2 = %d N",Rx2)
printf("\n Power transferred in case 2 = %d kW",power/1000)
