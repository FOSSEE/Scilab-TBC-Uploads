

//exapple 1.1 
clc; funcprot(0);
// Initialization of Variable
//part1
mu=6.3/100;//viscosity
rho=1170;//density
d=.3;//diameter of pipe
b=0.142;//conversion factor
pi=3.14;
//calculation
Q=150000*b/24/3600//flow rate
u=Q/pi/d^2*4//flow speed
Re=rho*u*d/mu
if    Re>4000    then
    disp(Re,"the system is in turbulent motion as reynolds no is greater than 4000:");
elseif Re<2100 then
    disp(Re,"the system is in laminar motion" );
else
    disp(Re, "the system is in transition motion");
end
//part 2
mu=5.29/1000;
d=0.06;
G=0.32;//mass flow rate
Re= 4*G/pi/d/mu;
if    Re>4000    then
    disp(Re,"the system is in turbulent motion as reynolds no is greater than 4000:");
elseif Re<2100 then
    disp(Re,"the system is in laminar motion as Re is less than 2100" );
else
    disp(Re, "the system is in transition motion");
end
