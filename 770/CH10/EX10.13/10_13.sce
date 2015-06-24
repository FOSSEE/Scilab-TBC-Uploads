clear;
clc;

//Example - 10.13
//Page number - 353
printf("Example - 10.13 and Page number - 353\n\n");

//Given
T_1 = 500;//[K] - Initial temperature
P_1 = 30;//[atm] - Initial pressure
P_1 = P_1*101325;//[Pa]
P_2 = 1;//[atm] - Final pressure
P_2 = P_2*101325;//[Pa]
R = 8.314;//[J/mol*K] - Universal gas constant
// For chlorine
Tc = 417.2;//[K] - Critical temperature
Pc = 77.10;//[bar] - Critical pressure
Pc = Pc*10^(5);//[Pa]

//Redlich Kwong equation of state,
a = (0.42748*(R^(2))*(Tc^(2.5)))/Pc;// [Pa*m^(6)*K^(1/2)/mol]
b = (0.08664*R*Tc)/Pc;// [m^(3)/mol]

// The cubic form of Redlich Kwong equation of state is given by,
// V^(3)-((R*T)/P)*V^(2)-((b_1^(2))+((b_1*R*T)/P)-(a/(T^(1/2)*P))*V-(a*b)/(T^(1/2)*P)=0
//Solving the cubic equation
// At state 1 (500 K, 30 atm)
deff('[y]=f1(V)','y=V^(3)-((R*T_1)/P_1)*V^(2)-((b^(2))+((b*R*T_1)/P_1)-(a/(T_1^(1/2)*P_1)))*V-(a*b)/(T_1^(1/2)*P_1)');
V_1=fsolve(1,f1);
V_2=fsolve(10,f1);
V_3=fsolve(100,f1);
// The above equation has 1 real and 2 imaginary roots. We consider only real root,
V = V_1;//[m^(3)/mol]

// Thus compressibility factor is
Z = (P_1*V_1)/(R*T_1);//compressibility factor

// The residual enthalpy at state 1 is given by
H_R_1 = (Z-1)*R*T_1 + ((3*a)/(2*b*T_1^(1/2)))*(log(V/(V+b)));//[J/mol]
 
// Since chlorine is assumed to behave ideally under the final condition,therefore
H_R_2 = 0;// Residual enthalpy at state 2
delta_H_R = H_R_2 - H_R_1;//[J/mol] - Residual enthalpy change
// and since isothermal conditions are maintained, therfore
delta_H_ig = 0;// Enthalpy change under ideal condition
delta_H = delta_H_R + delta_H_ig;//[J/mol]

printf(" The change in enthalpy is given by, delta_H = %f J/mol\n",delta_H);


