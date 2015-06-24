clear;
clc;
funcprot(0);

//given data
alpha1 = 30;//prewhirl in deg
hs = 0.4;//inlet hub-shrub radius ratio
Mmax = 0.9;//max Mach number
Q = 1;//air mass flow in kg/s
p01 = 101.3;//stagnation pressure in kPa
T01 = 288;//stagnation temperature in K
gamma = 1.4;
Rg = 287;//in J/(kgK)

//Calculations
beta1 = 49.4;//in deg
f = 0.4307;
a01 = sqrt(gamma*Rg*T01);
rho01 = p01*1000/(Rg*T01);
k = 1-(hs^2);
omega = (%pi*f*k*rho01*a01^3)^0.5;
N = (omega*60/(2*%pi));
rho1 = rho01/(1 + 0.2*(Mmax*cos(beta1*%pi/180))^2)^2.5;
cx = ((omega^2)/(%pi*k*rho1*(tan(beta1*%pi/180) + tan(alpha1*%pi/180))^2))^(1/3);
rs1 = (1/(%pi*rho1*cx*k))^0.5;

ds1 = 2*rs1;
U = omega*rs1;

//Results
printf('(i)The rotational speed of the impeller = %.1f rad/s and N = %d rev/min.',omega,N);
printf('\n (ii)The inlet static density downstream of the guide vanes at the shroud = %.5f kg/m^3.\n The axial velocity = %.2f m/s.',rho1,cx);
printf('\n (iii)The inducer tip diameter = %.3f cm\n U = %.1f m/s.',ds1*100,U);

//there are small errors in the answers given in textbook
