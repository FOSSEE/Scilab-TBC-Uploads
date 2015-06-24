clc; funcprot(0); //Example 11.2

//Initializing the variables
Us = 6;
b = 3;
l = 30;
rho = 1000;
mu = 10^-3;
T = 20+273; // Temperature in Kelvin

//Calculations
1/mu;
ReL = rho*Us*l/mu; 
Cf = 0.455*log10(ReL)^-2.58  ;

F = rho*Us^2*l*b*Cf ;
Lt = 10^5*mu/(rho*Us); // Assuming transition at Rel = 10^5
disp(Lt,"Transition length (m) :",F/1000,"Total drag on the plate (kN):");