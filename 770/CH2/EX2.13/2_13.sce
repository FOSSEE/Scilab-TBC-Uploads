clear;
clc;

// Example - 2.13
// Page number - 65
printf("Example - 2.13 and Page number - 65\n\n");

//Given

V_vessel = 360*10^(-3);//[m^(3)] - volume of vessel
T = 62+273.15;//[K] - Temperature
R = 8.314;//[J/mol*K] - Universal gas constant
m = 70*1000;//[g]/ - Mass of carbon dioxide

//For carbon dioxide
Tc = 304.2;//[K] - Cricitical temperature
Pc = 73.83;//[bar] - Cricitical pressure
Pc = Pc*10^(5);// [N/m^(2)]
Zc = 0.274;// Critical compressibility factor
Vc = 94.0;//[cm^(3)/mol]
Vc = Vc*10^(-6);//[m^(3)/mol]
w = 0.224;// Acentric factor
M = 44.01;// Molecular weight of carbon dioxide

n = m/M;//[mol] - No. of moles
V = V_vessel/n;//[m^(3)/mol]//molar volume

// (1)
// Ideal gas behaviour
P_1 = (R*T)/V;//[N/m^(2)]
printf(" (1).The required pressure using ideal equation of state is %e N/m^(2)\n",P_1);

// (2)
// Virial equation of state, Z = 1 + (B*P)/(R*T)
// (P*V)/(R*T) = 1 + (B*P)/(R*T), and thus P = (R*T)/(V - B). Now
Tr = T/Tc;//Reduced temperature
// At reduced temperature Tr,
B_0 = 0.083 - (0.422/(Tr)^(1.6));
B_1 = 0.139 - (0.172/(Tr)^(4.2));
B = ((B_0 + (w*B_1))*(R*Tc))/Pc;//[m^(3)/mol]
P_2 = (R*T)/(V - B);//[N/m^(2)]
printf(" (2).The required pressure using given virial equation of state is %e N/m^(2)\n",P_2);

// (3)
// Virial equation of state, Z = 1 + (B/V)
// (P*V)/(R*T) = 1 + (B/V)
P_3 = ((R*T)/V) + (B*R*T)/(V^(2));//[N/m^(2)]
printf(" (3).The required pressure using given virial equation of state is %e N/m^(2)\n",P_3);

// (4)
// Van der Walls equation of state,P = ((R*T)/(V-b)) - a/(V^(2))
a = (27*(R^(2))*(Tc^(2)))/(64*Pc);//[Pa*m^(6)/mol^(2)]
b = (R*Tc)/(8*Pc);//[m^(3)/mol]
P_4 = ((R*T)/(V-b)) - a/(V^(2));//[N/m^(2)]
printf(" (4).The required pressure using van der Walls equation of state is %e N/m^(2)\n",P_4);

//(5)
// Redlich Kwong equation of state,
a_1 = (0.42748*(R^(2))*(Tc^(2.5)))/Pc;//[Pa*m^(6)*K^(1/2)/mol]
b_1 = (0.08664*R*Tc)/Pc;//[m^(3)/mol]
P_5 = ((R*T)/(V - b_1)) - (a_1/(T^(1/2)*V*(V + b_1)));//[N/m^(2)]
printf(" (5).The required pressure using Redlich Kwong equation of state is %e N/m^(2)\n",P_5);


