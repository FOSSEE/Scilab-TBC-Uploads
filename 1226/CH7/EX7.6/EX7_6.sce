clc;funcprot(0)//EXAMPLE 7.6

//Initializing the variables
etaV1 = 0.8;.........//Volumetric efficiency
pi1 = 1.013;.......//Inlet pressure
 pe1= 1.013;pi2= 1.013;
pe2 = 1.15;.........//Exhaust pressure
Tk1 = 298;...........//Temperature in Kelvin
Tk2 = 318;...........//Temperature in Kelvin
r = 7.5;........//compression ratio
ga=1.4;..........//degree of freedom for gas
//calculations
//For pressure change
eta_V2 = r - (pe2/pi2)^(1/ga);
eta_V1 = r - (pe1/pi1)^(1/ga);
x=eta_V2/eta_V1;
//For inlet temperature change
y = sqrt(Tk2/Tk1);
//For volumetric efficiency, considering both pressure and temperature
etaV2 = etaV1*x*y;
disp(etaV2*100,"The volumetric efficiency is (%):")
PO=((etaV1/Tk1)-(etaV2/Tk2))/(etaV1/Tk1);
disp(PO*100,"Percentage Reduction in Output (%): ")
