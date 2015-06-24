clear;
clc;
funcprot(0);

//Example - 10.12
//Page number - 351
printf("Example - 10.12 and Page number - 351\n\n");

//Given
P_1 = 80;//[bar] - Initial pressure
P_1 = P_1*10^(5);//[Pa]
T_1 = 300 + 273.15;//[T] - Initial temperature
P_2 = 40;//[bar] - Final pressure
P_2 = P_2*10^(5);//[Pa]
T_2 = 300 + 273.15;//[K] - Final temperature
T_0 = 25 + 273.15;//[K] - Surrounding temperature
P_0 = 1;//[atm] - Surrounding pressure
P_0 = P_0*101325;//[Pa]
Tc = 647.1;//[K]
Pc = 220.55;//[bar]
Pc = Pc*10^(5);//[Pa]
R = 8.314;//[J/mol*K] - Universal gas constant

// For van der Walls equation of state
a = (27*R^(2)*Tc^(2))/(64*Pc);//[Pa-m^(6)/mol^(2)]
b = (R*Tc)/(8*Pc);//[m^(3)/mol]

// The cubic form of van der Walls equation of state is given by,
// V^(3) - (b + (R*T)/P)*V^(2) + (a/P)*V - (a*b)/P = 0

// Solving the cubic equation
// At 80 bar and 300 K
deff('[y]=f(V)','y=V^(3)-(b+(R*T_1)/P_1)*V^(2)+(a/P_1)*V-(a*b)/P_1');
V_1_1=fsolve(0.1,f);
V_1_2=fsolve(10,f);
V_1_2=fsolve(100,f);
// The largest root is considered because of vapour
V_1 = V_1_1;

U_R_1 = -a/V_1;//[J/mol] - Internal energy
H_R_1 = P_1*V_1 - R*T_1 - a/V_1;//[J/mol] - Enthalpy
S_R_1 = R*log((P_1*(V_1-b))/(R*T_1));

// Now let us calculate the residual properties at state 2
// At 40 bar and 300 K
deff('[y]=f1(V)','y=V^(3)-(b+(R*T_2)/P_2)*V^(2)+(a/P_2)*V-(a*b)/P_2');
V_2_1 = fsolve(0.1,f1);
V_2_2 = fsolve(10,f1);
V_2_3 = fsolve(100,f1);
// The above equation has 1 real and 2 imaginary roots. We consider only real root.
V_2 = V_2_1;

U_R_2 = -a/V_2;//[J/mol] - Internal energy
H_R_2 = P_2*V_2 - R*T_2 - a/V_2;//[J/mol] - Enthalpy
S_R_2 = R*log((P_2*(V_2-b))/(R*T_2));

delta_U_R = U_R_2 - U_R_1;//
delta_H_R = H_R_2 - H_R_1;//
delta_S_R = S_R_2 - S_R_1;//

delta_U_ig = 0;//[J/mol] - As temperature is constant
delta_H_ig = 0;//[J/mol] - As temperature is constant
// delta_S_ig = Cp_0*log(T_2/T_1) - R*log(P_2/P_1);// [J/mol-K]
// Since T_1 = T_2
// Therefore
delta_S_ig = - R*log(P_2/P_1);// [J/mol-K]
delta_U = delta_U_R + delta_U_ig;//[J/mol]
delta_H = delta_H_R + delta_H_ig;//[J/mol]
delta_S = delta_S_R + delta_S_ig;//[J/mol-K]

// Change in exergy is given by
// delta_phi = phi_1 - phi_2 = U_1 - U_2 + P_0*(V_1 - _V_2) - T_0*(S_1 - S_2)
delta_phi = - delta_U + P_0*(V_1 - V_2) - T_0*(-delta_S);//[J/mol]

printf(" The change in internal energy is %f J/mol\n",delta_U);
printf(" The change in enthalpy is %f J/mol\n",delta_H);
printf(" The change in entropy is %f J/mol-K\n",delta_S);
printf(" The change in exergy is %f J/mol\n",delta_phi);


