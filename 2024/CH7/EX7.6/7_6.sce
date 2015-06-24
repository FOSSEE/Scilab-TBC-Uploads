clc
//Initialization of variables
R=0.73
v=0.193*44 //ft^3/mol
T=672 //R
a=924.2 //atm ft^6 /mol^2
b=0.685 //ft^3/mol
//calculations
p1= R*T/(v-b) - a/v^2
p2=R*T/v
//results
printf("Ideal gas law, pressure = %.1f atm",p2)
printf("\n Vanderwaals law, pressure = %.1f atm",p1)
