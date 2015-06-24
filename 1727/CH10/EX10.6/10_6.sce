clc
//Initialization of variables
U=4000 //m/s
L=8 //m
nu=3600e-6 //m^2/s
rho=1000 //kg/m^3
b=5 //m
//calculations
Rl=U*L/nu
Cf= 0.074/Rl^(1/5) -1700/Rl
Ff=Cf*0.5*rho*(U/3600)^2 *L*b
//results
printf("Skin friction drag = %.2f N",Ff)
