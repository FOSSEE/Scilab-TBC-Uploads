clc
//Initialization of variables
U=172*1000/3600 //m/s
w=3 //m
h=3 //m
L=100 //m
nu=1.5e-5 //m^2/s
rho=1.22 //kg/m^3
//calculations
Rl=U*L/nu
Cf=0.074 /(Rl^(1/5))
Ff=Cf*0.5*rho*U^2 *w*h*L
power= Ff*U
//results
printf("power required = %.1f kW",power/1000)
//The answer is a bit different due to rounding off error
