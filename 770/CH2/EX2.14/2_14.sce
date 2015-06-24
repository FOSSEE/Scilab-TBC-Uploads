clear;
clc;
funcprot(0);

// Example - 2.14
// Page number - 66
printf("Example - 2.14 and Page number - 66\n\n");

//Given
T = 500+273.15;//[K] - Temperature
R = 8.314;//[J/mol*K] - Universal gas constant
P = 325*1000;//[Pa] - Pressure
Tc = 647.1;//[K] - Cricitical temperature
Pc = 220.55;//[bar] - Cricitical pressure
Pc = Pc*10^(5);//[N/m^(2)]

//(1)
// Van der Walls equation of state,
a = (27*(R^(2))*(Tc^(2)))/(64*Pc);//[Pa*m^(6)/mol^(2)]
b = (R*Tc)/(8*Pc);//[m^(3)/mol]
// The cubic form of van der Walls equation of state is given by,
// V^(3)-(b+(R*T)/P)*V^(2)+(a/P)*V-(a*b)/P=0
// Solving the cubic equation
deff('[y]=f(V)','y=V^(3)-(b+(R*T)/P)*V^(2)+(a/P)*V-(a*b)/P');
V_1 = fsolve(1,f);
V_2 = fsolve(10,f);
V_3 = fsolve(100,f);
// The above equation has 1 real and 2 imaginary roots. We consider only real root,
Z_1 = (P*V_1)/(R*T);//compressibility factor
printf(" (1).The compressibility factor of steam using van der Walls equation of state is %f\n",Z_1);

//(2)

//Redlich Kwong equation of state,
a_1 = (0.42748*(R^(2))*(Tc^(2.5)))/Pc;//[Pa*m^(6)*K^(1/2)/mol]
b_1 = (0.08664*R*Tc)/Pc;//[m^(3)/mol]
// The cubic form of Redlich Kwong equation of state is given by,
// V^(3)-((R*T)/P)*V^(2)-((b_1^(2))+((b_1*R*T)/P)-(a/(T^(1/2)*P))*V-(a*b)/(T^(1/2)*P)=0
//Solving the cubic equation
deff('[y]=f1(V)','y=V^(3)-((R*T)/P)*V^(2)-((b_1^(2))+((b_1*R*T)/P)-(a_1/(T^(1/2)*P)))*V-(a_1*b_1)/(T^(1/2)*P)');
V_4=fsolve(1,f1);
V_5=fsolve(10,f1);
V_6=fsolve(100,f1);
// The above equation has 1 real and 2 imaginary roots. We consider only real root,
// Thus compressibility factor is
Z_2 = (P*V_4)/(R*T);//compressibility factor
printf(" (2).The compressibility factor of steam using Redlich Kwong equation of state is %f\n",Z_2);


