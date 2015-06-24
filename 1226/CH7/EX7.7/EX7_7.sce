clc;funcprot(0)//EXAMPLE 7.7

//Initializing the variables
pi1 = 1.013;.......//Inlet pressure
 pe1= 1.013;pi2= 1.3;
pe2 = 1.013;.........//Exhaust pressure
Tk1 = 300;...........//Temperature in Kelvin
Tk2 = 333;...........//Temperature in Kelvin
r = 14;........//compression ratio
ga=1.4;..........//degree of freedom for gas
R=287;...........//gas constant in J/kg.K
//calculations
//For pressure change
eta_V2 = r - (pe2/pi2)^(1/ga);
eta_V1 = r - (pe1/pi1)^(1/ga);
x=eta_V2/eta_V1;
//For inlet temperature change
y = sqrt(Tk2/Tk1);
//For volumetric efficiency, considering both pressure and temperature
pive = ((x*y)-1);.........//percentage increase in volumetric efficiency
disp(pive*100,"The percentage increase in volumetric efficiency is (%):")
rho1 = (pi1*10^5)/(R*Tk1);
rho2 = (pi2*10^5)/(R*Tk2);
z = (rho2/rho1)*x*y;
pip = (z-1);
disp (pip*100,"The percentage increase in power (%):")
