

//exapple 11.2 
clc; funcprot(0);
// Initialization of Variable
d=50/1000000;
rhos=1850;//density of particle
rho=880;//density of hydrocarbon
mu=2.75/1000;//viscosity of hydrocarbon
e=0.45;//void fraction coeff.
g=9.81;
h=1.37;//flow depth
c=5.5/1000;//c=1/K
//calculation
//part 1
u=c*e^3*d^2*g*(rhos-rho)/mu/(1-e);
disp(u,"The superficial linear flow rate in (m/s):")
//part 2
u=d^2*g*(rhos-rho)/18/mu;
disp(u,"Terminal Settling Velocity in (m/s):");
Re=d*u*rho/mu;
if Re<2 then
    disp("Stoke law assumption is sustained with this velocity")
end
//part 3
P=g*(rhos-rho)*h*(1-e);
disp(P,"Pressure drop across fluidised bed in (N/m^2):");
