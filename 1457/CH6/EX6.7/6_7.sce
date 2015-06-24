clc
//Initialization of variables
V1=8.02 //fps
V2=16.04 //fps
Q=481 //cfs
rho=1.94
A=10*6
d=3
//calculations
Fx=62.4*d*A - 62.4*d/2 *A/2 - rho*Q*(V2-V1)
V1m=2.56 //m/s
V2m=5.12 //m/s
Qm=15.4 //m^2/s
dm=1
Am=2*3
rhom=1
Fxm=9.81*dm*Am - 9.81*dm/2 *Am/2 - rhom*Qm*(V2m-V1m)
//results
printf("Force in x- direction = %d lb",Fx)
printf("Force in x- direction = %.1f kN",Fxm)
