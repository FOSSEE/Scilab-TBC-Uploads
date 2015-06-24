clear;
clc;

//Example - 2.5
//Page number - 46
printf("Example - 2.5 and Page number - 46\n\n");

//Given
V_1 = 0.3;//[m^(3)]//volume of cylinder
T = 60+273.15;//[K] - Temperature
P = 130*10^(5);//[N/m^(2)] - Pressure
Tc = 305.3;//[K] - Critical temperature
Pc = 48.72*10^(5);//[N/m^(2)] - Critical pressure
w = 0.100;//acentric factor
M = 30.07;//molecular weight of ethane
Tr = T/Tc;// Reduced temperature
R = 8.314;//[J/mol*K] - Universal gas constant

B_0 = 0.083-(0.422/(Tr)^(1.6));
B_1 = 0.139-(0.172/(Tr)^(4.2));

//We know,(B*Pc)/(R*Tc) = B_0+(w*B_1)
B = ((B_0 + (w*B_1))*(R*Tc))/Pc;//[m^(3)/mol] - Second virial coefficient
Z = 1 + ((B*P)/(R*T));//Compressibility factor
V = (Z*R*T)/P;//[m^(3)/mol] - Molar volume

//No.of moles in 0.3 m^(3) cylinder is given by
n1 = V_1/V;//[mol]

//Mass of gas in cylinder is given by 
m1 = (n1*M)/1000;//[kg]
printf(" Under actual conditions,the mass of ethane is, %f kg\n",m1);

//Under ideal condition, taking Z = 1,
V_ideal = (R*T)/P;//[m^(3)/mol]
n2 = V_1/V_ideal;//[mol]
m2 = (n2*M)/1000;//[kg]
printf(" Under ideal conditions,the mass of ethane is, %f kg\n",m2);


