clc; funcprot(0);
//Example 11.2 Critical Pressure

// Initialisation of variables
V0 = 1.689*500;           //Velocity in ft/sec
rho = 0.001267;          //From table 4.1
P = (848.7/12)*13.75;               // Pressure at 20,000 ft
gma = 1.4;
g = 32.174;
R = 53.351;
T = 459.4+25;               //Temperature in Rankine

// Calculations
a0 = sqrt(gma*g*R*T);
M0 = V0/a0;
Pcr = (2/gma/M0^2)*((2/(gma + 1)+ (gma-1)*M0^2/(gma+1))^(gma/(gma-1))-1);



//Results 
disp(Pcr,"Critical Pressure Coefficient: ") ;
