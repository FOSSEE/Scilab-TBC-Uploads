clc
//Initialization of variables
Vc=12.7 //cm/s
r=2 //cm
r2=5 //cm
R=354
rho=0.85
V=6.37 //cm/s
D=0.1 //m
//calculations
k=Vc/r2^2
f=64/R
T0=f/4 *rho*V^2 /2
T02=T0/10
hr=f*(V*10^-2)^2 /(2*9.81*D)
//results
printf("Friction factor = %.2f",f)
printf("\n Shear stress at the pipe wall = %.3f N/m^2",T02)
printf("\n Head loss per pipe length = %.5f m/m",hr)
