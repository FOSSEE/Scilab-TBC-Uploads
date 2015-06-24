clear;
clc;
funcprot(0);

//given data
T01 = 22;//stagnation temperature in degC
Z = 17;//number of vanes
N = 15000;//rotational speed in rev/min
r = 4.2;//stagnation pressure ratio between diffuser and impeller
eff_ov = 0.83;//overall efficiency
mdot = 2;//mass flow rate in kg/s
eff_m = 0.97;//mechanical efficiency
rho2 = 2;//air density at impeller outle in kg/m^3
gamma = 1.4;
R = 0.287;//in kJ/(kg.K)
b2 = 11;//axial width at the entrance to the diffuser in mm

//Calculations
Cp = gamma*R*1000/(gamma-1);
sigmaS = 1 - 2/Z;
U2 = sqrt(Cp*(T01+273)*((r)^((gamma-1)/gamma) -1)/(sigmaS*eff_ov));
omega = N*%pi/30;
rt = U2/omega;
Wdot_act = mdot*sigmaS*(U2^2)/(eff_m);
cr2 = mdot/(rho2*2*%pi*rt*b2/1000);
ctheta2 = sigmaS*U2;
c2 = sqrt(ctheta2^2 +cr2^2);
delW = sigmaS*U2^2;
T2 = T01+273+(delW - 0.5*c2^2)/Cp;
M2 =  c2/sqrt(gamma*R*1000*T2);

//Results
printf('Absolute mach number, M2 = %.2f.',M2);
