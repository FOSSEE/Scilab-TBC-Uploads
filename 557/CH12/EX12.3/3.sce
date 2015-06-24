clc; funcprot(0); //Example 12.3 

//Initializing the variables
U0 = 80*1000/3600;
d = 0.02;
rho =1.2;
mu = 1.7*10^-5;
A = 0.02*500; // Projected area of wire
N = 20; // No of cables

//Calculations
Re = rho*U0*d/mu;
Cd = 1.2;// From figure 12.10 for given Re; 
D = 0.5*rho*Cd*A*U0^2
F = N*D; 
f =  0.198*(U0/d)*(1-19.7/Re);

disp(f,"Frequency (Hz):",F/1000,"Total force on tower (kN):");