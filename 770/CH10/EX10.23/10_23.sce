clear;
clc;

//Example - 10.23
//Page number - 366
printf("Example - 10.23 and Page number - 366\n\n");

//Given
T = 320 + 273.15;//[K]
R = 8.314;//[J/mol*K] - Universal gas constant

// For water
Tc = 647.1;//[K]
Pc = 220.55;//[bar]
Pc = Pc*10^(5);//[Pa]

// The cubic form of Redlich Kwong equation of state is given by,
// V^(3) - ((R*T)/P)*V^(2) - ((b_1^(2)) + ((b_1*R*T)/P) - (a/(T^(1/2)*P))*V - (a*b)/(T^(1/2)*P) = 0

// At 320 C and 70 bar pressure
P_1 = 70;//[bar]
P_1 = P_1*10^(5);//[Pa]

a = (0.42748*(R^(2))*(Tc^(2.5)))/Pc;//[Pa*m^(6)*K^(1/2)/mol]
b = (0.08664*R*Tc)/Pc;//[m^(3)/mol]
// Solving the cubic equation
deff('[y]=f1(V)','y=V^(3)-((R*T)/P_1)*V^(2)-((b^(2))+((b*R*T)/P_1)-(a/(T^(1/2)*P_1)))*V-(a*b)/(T^(1/2)*P_1)');
V1=fsolve(1,f1);
V2=fsolve(10,f1);
V3=fsolve(100,f1);
// The largest root is considered because at 320 C and 70 bar vapour phase exists.
V_1 = V1;//[m^(3)/mol]
// Thus compressibility factor is
Z_1 = (P_1*V_1)/(R*T);

// For Redlich-Kwong equation of state
// log(f/P) = Z - 1 - log(V_1/(V_1-b)) + (a/(b*R*(T^(3/2))))*log(V/(V+b))
f_1 = P_1*(exp(Z_1-1-log(Z_1)+log(V_1/(V_1-b))+(a/(b*R*(T^(3/2))))*log(V_1/(V_1+b))));//[Pa]
f_1 = f_1*10^(-5);//[bar]

printf(" The fugacity of water vapour at 320 C and 70 bar pressure is %f bar\n\n",f_1);

// At 320 C and 170 bar pressure, we have
P_2 = 170;//[bar]
P_2 = P_2*10^(5);//[Pa]

// Solving the cubic equation
deff('[y]=f2(V)','y=V^(3)-((R*T)/P_2)*V^(2)-((b^(2))+((b*R*T)/P_2)-(a/(T^(1/2)*P_2)))*V-(a*b)/(T^(1/2)*P_2)');
V4 = fsolve(1,f2);
V5 = fsolve(10,f2);
V6 = fsolve(100,f2);
// The above equation has only 1 real root,other two roots are imaginary. Therefore,
V_2 = V6;//[m^(3)/mol]
// Thus compressibility factor is
Z_2 = (P_2*V_2)/(R*T);

// For Redlich-Kwong equation of state
// log(f/P) = Z - 1 - log(V_1/(V_1-b)) + (a/(b*R*(T^(3/2))))*log(V/(V+b))
f_2 = P_2*(exp(Z_2-1-log(Z_2)+log(V_2/(V_2-b))+(a/(b*R*(T^(3/2))))*log(V_2/(V_2+b))));//[Pa]
f_2 = f_2*10^(-5);//[bar]

printf(" The fugacity of water vapour at 320 C and 170 bar pressure is %f bar\n\n",f_2);

