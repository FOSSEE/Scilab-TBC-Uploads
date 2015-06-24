clc; funcprot(0); //Example 13.1

//Initializing the variables
rho0 = 1.8;
R = 287;
T = 75+273; // Temperature in kelvin 
gma = 1.4; 
Ma = 0.7;

//Calculations
P0 = rho0*R*T;
c = sqrt(gma*R*T);
V0 = Ma*c;
Pt = (P0^((gma-1)/gma) + rho0*((gma-1)/gma)*(V0^2/(2*P0^(1/gma))))^(gma/(gma-1));
rhoT =  rho0*(Pt/P0)^(1/gma);
Tt =  Pt/(R*rhoT)-273;

disp(rhoT,"Density of airstream (kg/M3):",Tt,"Temperature (Degree) :", Pt/1000,"Staganation Pressure (kN/m2 ) :");