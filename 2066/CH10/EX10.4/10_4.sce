clc
clear
//Initialization of variables
Fl=7500 //pounds
rho=0.00230
V=175*5280/3600 //ft/s
B=50
A=350 //ft^2
//calculations
Vi=2*Fl/(%pi*rho*V*B^2)
Cl=Fl/(A*0.5*rho*V^2)
Cdi=Cl*Vi/(V)
Fdi=Cdi*A*0.5*rho*V^2
hp=Fdi*V/550
//results
printf("Horsepower required = %.1f hp",hp)
