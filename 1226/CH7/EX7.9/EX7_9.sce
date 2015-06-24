clc;funcprot(0)//EXAMPLE 7.9

//Initializing the variables
etaV1 = 0.81;.........//Volumetric efficiency
pi1 = 1.01;.......//Inlet pressure before supercharger
pe1= 1.01;...........//Exhaust pressure before supercharger
pi2= 1.38;............//Inlet pressure after supercharger
pe2 = 1.01;.........//Exhaust pressure in bar after addition of super charger
Tk1 = 300;...........//Temperature in Kelvin
Tk2 = 321;...........//Temperature in Kelvin
r = 7.5;........//compression ratio
ga=1.4;..........//degree of freedom for gas
R=287;.............//Gas constant for air in J/kgK
IP1=75;...............//Indicated power output before addition of supercharger
//calculations
//For pressure change
eta_V2 = r - (pe2/pi2)^(1/ga);
eta_V1 = r - (pe1/pi1)^(1/ga);
x=eta_V2/eta_V1;
//For inlet temperature change
y = sqrt(Tk2/Tk1);
//For volumetric efficiency, considering both pressure and temperature
etaV2 = etaV1*x*y;
disp(etaV2*100,"The volumetric efficiency of supercharged engine is (%):")
rho1 = (pi1*10^5)/(R*Tk1);....//density of air before addition of supercharger
rho2 = (pi2*10^5)/(R*Tk2);..//density of air after addition of supercharger
IP2 = IP1 * (etaV2*rho2)/(etaV1*rho1);
disp(IP2,"Indicated power of supercharged engine is (kW):")
