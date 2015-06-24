clear;
clc;
funcprot(0);

//Example - 10.19
//Page number - 359
printf("Example - 10.19 and Page number - 359\n\n");

//Given
T = 100 + 273.15;//[K] - Temperature
Tc = 647.1;//[K] - Critical temperature of water
Pc = 220.55;//[bar] - Critical pressure of water
Pc = Pc*10^(5);//[Pa]
R = 8.314;//[J/mol*K] - Universal gas constant

// For van der Walls equation of state
a = (27*R^(2)*Tc^(2))/(64*Pc);//[Pa-m^(6)/mol^(2)]
b = (R*Tc)/(8*Pc);//[m^(3)/mol]

// The cubic form of van der Walls equation of state is given by,
// V^(3) - (b + (R*T)/P)*V^(2) + (a/P)*V - (a*b)/P = 0

// For water vapour at 100 C under saturated conditions pressure is 1 atm, therefore
P = 1;//[atm]
P = P*101325;//[Pa]

// At 100 C and 1 atm 
deff('[y]=f(V)','y=V^(3)-(b+(R*T)/P)*V^(2)+(a/P)*V-(a*b)/P');
V_1 = fsolve(0.1,f);
V_1 = fsolve(10,f);
V_1 = fsolve(100,f);
// The largest root is considered because of molar volume of vapour phase is to determined
V = V_1;//[m^(3)/mol]

// Now the figacity is given by
// log(f/P) = log((R*T)/(P*(V-b))) + b/(V-b) - (2*a)/(R*T*V);
f = P*(exp(log((R*T)/(P*(V-b))) + b/(V-b) - (2*a)/(R*T*V)));//[Pa]
f = f/101325;//[atm]

printf(" The molar volume is %f m^(3)/mol\n\n",V);
printf(" The fugacity is %f atm\n\n",f);


