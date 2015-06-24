clc
//Initialization of variables
omega=6 //rev/s
Q=10 //ft^3/s
z=20 //ft
gama=62.4 //lb/ft^3
eta=0.94
omega=omega*60 //rpm
Wsh=gama*Q*z*eta
Wsh=Wsh/550 //converting to hp
h_T=z
N=omega*sqrt(Wsh)/(h_T)^(5/4)
printf("W_shaft = %.1f hp',Wsh)
printf('\n N_sd = %.1f',N)
