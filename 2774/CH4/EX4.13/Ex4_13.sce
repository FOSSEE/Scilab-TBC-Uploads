clc
// initialization of variables
Wdot=10 // pump power in hp
g=9.81 // acceleration due to gravity
rho=1000 // density of water in kg/m^3
d1=0.06 // inlet dimeter in 'm'
d2=0.10 // oulet diamter in 'm'
V1=10 // velocity of water at inlet in m/s

//solution
A1=%pi*(d1**2)/4 // area of inlet
A2=%pi*(d2**2)/4 // area of outlet
V2=A1*V1/A2 // oulet velocity from continuity equation

mdot=rho*A1*V1 // mass flow rate
delP=((((Wdot*746)/mdot)-((V2**2)-V1**2)/(2*g))*rho)/1000 // change in pressure in kPa
printf("The rise in pressure is "+string(delP)+" kPa")
// The answer is approximated in textbook , our answer is precise 
