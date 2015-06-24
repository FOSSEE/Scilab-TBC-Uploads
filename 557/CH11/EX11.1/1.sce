clc; funcprot(0); //Example 11.1

//Initializing the variables
rho = 860;
v = 10^-5;
Us = 3;
b = 1.25;
l = 2;

//Calculations
x = 1; // At x =1 
Rex = Us*x/v;
ReL = Us*l/v ;
mu =  rho*v;
T0 = 0.332*mu*Us/x*Rex^0.5;
Cf = 1.33*ReL^-0.5;
F = rho*Us^2*l*b*Cf ;

disp(F,"Total, double-sided resistance of the plate (N) :",T0,"Shear stress at mid-length(N/m2)");