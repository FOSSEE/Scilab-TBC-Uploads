clear;
clc;

// Example - 2.12
// Page number - 64
printf("Example - 2.12 and Page number - 64\n\n");

//Given

V_vessel = 0.1;//[m^(3)]// Volume of vessel
T = 25 + 273.15;//[K] - Temperature
R = 8.314;//[J/mol*K] - Universal gas constant
m = 25*1000;//[g]// Mass of ethylene
Tc = 282.3;//[K] - Critical temperature
Pc = 50.40;//[bar] - Critical pressure
Pc = Pc*10^(5);//[N/m^(2)]
Zc = 0.281;// Critical compressibility factor
Vc = 131;//[cm^(3)/mol] - Critical volume
Vc = Vc*10^(-6);//[m^(3)/mol]
w = 0.087;// Acentric factor
M = 28.054;// Molecular weight of ethylene

n = m/M;//[mole] - No. of moles of ethylene
V = V_vessel/n;//[m^(3)/mol] - Molar volume

//Under Redlich Kwong equation of state, we have
a = (0.42748*(R^(2))*(Tc^(2.5)))/Pc;//[Pa*m^(6)*K^(1/2)/mol]
b = (0.08664*R*Tc)/Pc;//[m^(3)/mol]
P = ((R*T)/(V-b))-(a/(T^(1/2)*V*(V+b)));//[N/m^(2)]
printf(" The required pressure using Redlich Kwong equation of state is %e N/m^(2)\n",P);

//For ideal gas equation of state,
P_ideal = (R*T)/V;//[N/m^(2)]
printf(" For ideal gas equation of state,the required pressure is %e N/m^(2)\n",P_ideal);

