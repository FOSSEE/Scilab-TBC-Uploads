clc; funcprot(0); //Example 12.4

//Initializing the variables
mu = 0.03;
d = 10^-3;
rhoP = 1.1*10^3;
g = 9.81;
rho0 = 0.9*10^3;
//Calculations
B = 18*mu/(d^2*rhoP);
t = 4.60/B;
Vt = d^2*(rhoP - rho0)*g/(18*mu);
Re = rho0*Vt*d/mu;


disp(Re,"Reynolds No corrosponding to the velocity :",t,"Time taken by the particle take to reach 99 per cent of its terminal velocity (s):");