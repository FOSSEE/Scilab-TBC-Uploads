clc();
clear;

// To calculate the heat transfer coefficient from the plate to the air

Tw = 196;                    // Temperature of plate in F
Ts = 79;                     // Temperature of the air in F
u = 587;                     // velocity in air in fps
x = 4/12;                    // Length of plate in ft
n = 20.4*10^-5;              // Kinematic velocity 
Cp = 1200;                   // Specific heat capacity 
Re = u*x/n;                  // Reynolds number
r = 0.845;                   // Temperature recovery factor
tr = Ts+r*u*u/Cp;            // Dynamic temperature in F
Pr = 0.697;                  // Pradtls number
p = 0.0657;                  // Density in lb/ft^3
t = 144.1;                   // Corresponding temperature in F
St =  0.0296*(Re)^-(1/5)/(1+1.75*0.87*(Re)^-(1/10)*(Pr-1));   
// Strantons number

h = p*u*St*3600;                 // Heat transfer coefficient  
hav = 1.215*h;                  // Average heat transfer coefficient

printf("The heat transfer coefficient from the palte to the air is %.1f Btu/hr-ft^2-F",hav);  
