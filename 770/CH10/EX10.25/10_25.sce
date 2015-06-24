clear;
clc;
funcprot(0);

//Example - 10.25
//Page number - 369
printf("Example - 10.25 and Page number - 369\n\n");

//Given
T_1 = 150 + 273.15;//[K] - Initial emperature
T_2 = T_1;// Isothermal process
P_1 = 100*10^(3);//[Pa] - Initial pressure
P_2 = 450*10^(3);//[Pa] - Final pressure
R = 8.314;//[J/mol*K] - Universal gas constant
// For water
Tc = 647.1;//[K] - Critical temperature
Pc = 220.55;//[bar] - Critical pressure
Pc = Pc*10^(5);
w = 0.345;
Mol_wt = 18.015;//[g/mol] - Molecular weight of water
Cp_0 = 4.18;//[J/mol-K] - Standard heat capacity of water

// Both phases are superheated vapour phases because at 150 C the vapour pressure of steam is 4.67 bar and both operating pressures are below saturated pressure.
// In Peng-Robinson equation of state
m = 0.37464 + 1.54226*w - 0.26992*w^(2);
// At T_1 and P_1, we have
Tr = T_1/Tc;
alpha = (1 + m*(1 - Tr^(1/2)))^(2);
a = ((0.45724*(R*Tc)^(2))/Pc)*alpha;//[Pa*m^(6)/mol^(2)]
b = (0.07780*R*Tc)/Pc;//[m^(3)/mol]

// Cubuc form of Peng-Robinson equation of stste is given by
// V^(3)+(b-(R*T)/P)*V^(2)-((3*b^(2))+((2*R*T*b)/P)-(a/P))*V+b^(3)+((R*T*(b^(2))/P)-((a*b)/P)=0;
// Solving the cubic equation
deff('[y]=f(V)','y=V^(3)+(b-(R*T_1)/P_1)*V^(2)-((3*b^(2))+((2*R*T_1*b)/P_1)-(a/P_1))*V+b^(3)+((R*T_1*(b^(2)))/P_1)-((a*b)/P_1)');
V1 = fsolve(-1,f);
V2 = fsolve(0,f);
V3 = fsolve(1,f);
//The largest root is for vapour phase,
//The largest root is only considered as the systemis gas
V_1 = V3;//[m^(3)/mol]
// Thus compressibility factor is
Z_1 = (P_1*V_1)/(R*T_1);

// At T_2 and P_2, we have
// Cubuc form of Peng-Robinson equation of stste is given by
// V^(3)+(b-(R*T)/P)*V^(2)-((3*b^(2))+((2*R*T*b)/P)-(a/P))*V+b^(3)+((R*T*(b^(2))/P)-((a*b)/P)=0;
// Solving the cubic equation
deff('[y]=f(V)','y=V^(3)+(b-(R*T_2)/P_2)*V^(2)-((3*b^(2))+((2*R*T_2*b)/P_2)-(a/P_2))*V+b^(3)+((R*T_2*(b^(2)))/P_2)-((a*b)/P_2)');
V4 = fsolve(-1,f);
V5 = fsolve(0,f);
V6 = fsolve(1,f);
//The largest root is for vapour phase,
//The largest root is only considered as the systemis gas
V_2 = V6;//[m^(3)/mol]
// Thus compressibility factor is
Z_2 = (P_2*V_2)/(R*T_2);

// In the Peng-Robinson equation of stste
// da/dT = -(a*m)/((alpha*T*Tc)^(1/2))
// The residual enthalpy is given by
// H_R = R*T*(Z-1) + (((T*(da_dT))-a)/(2*2^(1/2)*b))*log((Z+(1+2^(1/2)*((P*b)/(R*T))))/(Z+(1-2^(1/2)*((P*b)/(R*T)))))

// At state 1
da_dT_1 = -(a*m)/((alpha*T_1*Tc)^(1/2));//[Pa*m^(6)/mol^(2)]
H_R_1 = R*T_1*(Z_1-1) + (((T_1*(da_dT_1))-a)/(2*(2^(1/2))*b))*log((Z_1+(1+2^(1/2))*((P_1*b)/(R*T_1)))/(Z_1+(1-2^(1/2))*((P_1*b)/(R*T_1))));

// At state 2
da_dT_2 = -(a*m)/((alpha*T_2*Tc)^(1/2));//[Pa*m^(6)/mol^(2)]
H_R_2 = R*T_2*(Z_2-1) + (((T_2*(da_dT_2))-a)/(2*2^(1/2)*b))*log((Z_2+(1+2^(1/2))*((P_2*b)/(R*T_1)))/(Z_2+(1-2^(1/2))*((P_2*b)/(R*T_1))));


// Since the temperature is the same,therefore ideal gas change in enthalpy is zero and thus
delta_H = H_R_2 - H_R_1;;//[J/mol]
delta_H = delta_H/Mol_wt;//[kJ/kg]

// The residual entropy relation for a substance following Peng - Robinson equation of state ia
// S_R = R*log(Z - (P*b)/(R*T)) + (da_dT/(2*2^(1/2)*b))*log((Z+(1+2^(1/2))*((P*b)/(R*T)))/(Z+(1-2^(1/2))*((P*b)/(R*T))))

// The residual entropy at state 1 is
S_R_1 = R*log(Z_1 - (P_1*b)/(R*T_1)) + (da_dT_1/(2*2^(1/2)*b))*log((Z_1+(1+2^(1/2))*((P_1*b)/(R*T_1)))/(Z_1+(1-2^(1/2))*((P_1*b)/(R*T_1))));

// The residual entropy at state 2 is
S_R_2 = R*log(Z_2 - (P_2*b)/(R*T_2)) + (da_dT_2/(2*2^(1/2)*b))*log((Z_2+(1+2^(1/2))*((P_2*b)/(R*T_2)))/(Z_2+(1-2^(1/2))*((P_2*b)/(R*T_2))));

delta_S_R = S_R_2 - S_R_1;//[J/mol-K]

// The ideal gas change in entropy is
delta_S_ig = Cp_0*log(T_2/T_1) - R*log(P_2/P_1);//[J/mol-K]

// Therefore
delta_S = delta_S_R + delta_S_ig;//[J/mol-K]

printf(" The enthalpy change is given by, delta_H = %f kJ/mol\n\n",delta_H);
printf(" The entropy change is given by, delta_S = %f J/mol-K\n\n",delta_S);

