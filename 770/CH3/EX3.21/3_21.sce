clear;
clc;

//Example - 3.21
//Page number - 119
printf("Example - 3.21 and Page number - 119\n\n");

//Given
T_1 = 40 + 273.15;//[K] - Initial temperature.
P_1 = 1;//[bar] - Initial pressure.
P_1 = P_1*10^(5);//[Pa]
Vol_1 = 0.01;//[cubic metre] - Initial volume of the cylinder.
T_2 = 100 + 273.15;//[K] - Final temperature.
P_2 = 100;//[kPa] - Final pressure.
P_2 = P_2*10^(5);//[Pa]
Vol_2 = 0.02;//[cubic metre] - Final volume of the cylinder.
Cp = 1.005;//[J/g-K] - Specific heat capacity at constant pressure.
Cv = 0.718;//[J/g-K] - Specific heat capacity at constant volume.
Mol_wt = 28.84;//[g/mol] - Molecular weight of air.
R = 8.314;//[J/mol-K] - universal gas constant

delta_Vol = Vol_2 - Vol_1;// [cubic metre] - Change in volume.
// Assuming ideal gas P*V = R*T
V_1 = (R*T_1)/P_1;// [m^(3)/mol] - Initial specific volume.
// Therefore,the total number of moles initially in the system is,
n_1 = (Vol_1/V_1);// [mol]
m_1 = n_1*Mol_wt;// [g] - Initial mass of the system.
Y = Cp/Cv;//Ratio of heat capacities

// The energy balance equation is given by
// -P*delta_Vol + H_liq*(m_2 - m_1) = m_2*Cv*(P*V2)/R - m_1*Cv*T_1
// m_2*Cv*(P*V2)/R = (Cv*P_1*Vol_2)/R
// Cv/R = 1/(Y-1)
// Since pressure of the gas in system is assumed constant,therefore it remains at 1 bar and thus P = P_1,
H_liq = Cp*T_2;// [J/g] - Enthalpy of liquid
m_2 = (P_1*delta_Vol + ((P_1*Vol_2)/(Y-1)) + H_liq*m_1 - m_1*Cv*T_1)/H_liq;//[g]

//The mass entering the assembly during the filling process is given by
m = m_2 - m_1;//[g]
n_2 = m_2/Mol_wt;//[mol] - Number of moles in the final state.
V_2 = Vol_2/n_2;//[m^(3)/mol] - Final specific volume.
// Therfore,final temperature is given by,
T_2 = (P_1*V_2)/R;//[K] - Final temperature.

printf(" The final equilibrium temperature is %f K\n",T_2);
printf(" The mass entering through the valve is %f g\n",m);

