clear;
clc;

//Example - 4.18
//Page number - 171
printf("Example - 4.18 and Page number - 171\n\n");

//Given
P_1 = 7*10^(5);//[Pa] - Initial pressure
T_1 = 95 + 273.15;//[K] - Initial temperature
P_2 = 3.5*10^(5);//[Pa] - Final pressure
dia = 15*10^(-2);//[m] - Diameter of pipe
m = 2;//[kg/s] - Mass flow rate
R = 8.314;//[J/mol-K] - Universal gas constant
Y = 1.4;// Index of expansion
Cp_0 = (R*Y)/(Y-1);//[J/mol-K] - Specific heat capacity at constant pressure
Cp_0 = (Cp_0/28.84)*1000;//[J/kg-K]
rho_1 = 6.6;//[kg/m^(3)] - Density

// velocity before throttling is to be determined m = rho*Vol*Area
V_1 = (R*T_1)/P_1;//[m^(3)/mol] - Specific volume
V_1 = (V_1/28.84)*1000;//[m^(3)/kg]
Vel_1 = m/(rho_1*3.14*(dia/2)^(2));//[m/s] - Velocity before throttling

// Let the temperature after throttling be T_2, then
// V_2 = (((R*T_2)/P_2)/28.84)*1000
// Vel_2 = m/(rho_2*Area) = (m*V_2)/(3.14*(dia/2)^(2))
// From first law, since q = W = 0, we get
// delta_H + (delta_V^(2))/2 = 0
// Cp_0*(T_2 - T_1) + ((Vel_2)^(2) - (Vel_1)^(2))/2 = 0
//Cp_0*(T_2 - T_1) +  (((m*((((R*T_2)/P_2)/28.84)*1000))/(3.14*(dia/2)^(2)))^(2) - (Vel_1)^(2))/2 = 0
// Solving the above equation for T_2, we get
deff('[y]=f1(T_2)','y=Cp_0*(T_2 - T_1) +  (((m*((((R*T_2)/P_2)/28.84)*1000))/(3.14*(dia/2)^(2)))^(2) - (Vel_1)^(2))/2');
T_2 =fsolve(100,f1);//[K] - Temperature after throttling 
// Therefore velocity of air downstream of restriction is given by 
Vel_2 = ((m*((((R*T_2)/P_2)/28.84)*1000))/(3.14*(dia/2)^(2)));//[m/s]

printf(" The velocity of air downstream of restriction is %f m/s\n",Vel_2);

delta_T = (T_2 - T_1);
// Since temperature difference (delta_T) is very small, therefore enthalpy change is also very small

// Entropy change is given by, delta_S = Cp_0*log(T_2/T_1) - R*log(P_2/P_1), but since T_1 and T_2 are almost equal
delta_S = - R*log(P_2/P_1);//[J/mol-K]

printf(" The change in entropy is %f kJ/mol-k",delta_S);

