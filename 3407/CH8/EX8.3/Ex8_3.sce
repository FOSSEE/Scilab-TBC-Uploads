clear;
clc;
funcprot(0);

//given data
Z = 12;//number of vanes
delW = 230;//in kW
T01 = 1050;//stagnation temperature in K
mdot = 1;//flow rate in kg/s
eff_ts = 0.81;//total-to-static efficiency
Cp = 1.1502;//in kJ/(kg.K)
gamma = 1.333;
R = 287;//gas constant

//Calculations
S = delW/(Cp*T01);
alpha2 = (180/%pi)*acos(sqrt(1/Z));
beta2 = 2*(90-alpha2);
p3_p01 = (1-(S/eff_ts))^(gamma/(1-gamma));
M02 = sqrt((S/(gamma-1))*((2*cos(beta2*%pi/180))/(1+cos(beta2*%pi/180))));
M2 = sqrt((M02^2)/(1-0.5*(gamma-1)*(M02^2)));
U2 = sqrt((gamma*R*T01)*(1/cos(beta2*%pi/180))*(S/(gamma-1)));

//Results
printf('(i) The absolut and relative flow angles:\n alpha2 = %.2f deg\n beta2 = %.2f deg',alpha2,beta2);
printf('\n (ii) The overall pressure ratio = %.3f',p3_p01);
printf('\n (iii) The rotor rip speed = %.1f m/s\n The inlet absolute Mach number = %.3f',U2,M2);


//there are small errors in the answers given in textbook
