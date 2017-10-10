clc; funcprot(0);
//Example 11.1 Critical Velocity

// Initialisation of variables
V0 = 1.47*480;           //Velocity in ft/sec
rho = 0.001267;          //From table 4.1
P = (848.7/12)*13.75;               // Pressure at 20,000 ft
gma = 1.4;

// Calculations
a0 = sqrt(gma*P/rho);
M0 = V0/a0;
Vcr = a0*sqrt(((gma - 1)*M0^2 + 2)/(gma+1));

//Results 
disp(Vcr/1.467,"Critical velocity(mph): ") ;
