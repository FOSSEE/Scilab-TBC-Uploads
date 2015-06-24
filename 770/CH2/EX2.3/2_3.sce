clear;
clc;

//Example - 2.3
//Page number - 42
printf("Example - 2.3 and Page number - 42\n\n");

//Given
//log10(Psat)=8.1122-(1592.864/(t+226.184))// 'Psat' in [mm Hg] and 't' in [c]
Tc = 513.9;//[K] - Critical temperature
Pc = 61.48;//[bar] - Critical pressure
Pc = Pc*10^(5);//[N/m^(2)]
Tr = 0.7;// Reduced temperature

T = Tr*Tc;//[K] - Temperature
T = T - 273.15;//[C]
P_sat = 10^(8.1122 - (1592.864/(T + 226.184)));//[mm Hg]
P_sat = (P_sat/760)*101325;//[N/m^(2)]
Pr_sat = P_sat/Pc;
w = -1-log10(Pr_sat);// Acentric factor
printf(" The acentric factor (w) for ethanol at given condition is %f",w);