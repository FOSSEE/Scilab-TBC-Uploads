clear;
clc;
funcprot(0);

// Example - 2.16
// Page number - 68
printf("Example - 2.16 and Page number - 68\n\n");

//Given
T = 500+273.15;//[K] - Temperature
P = 15;//[atm] - Pressure
P = P*101325;//[N/m^(2)]
R = 8.314;//[J/mol*K] - Universal gas constant
Tc = 190.6;//[K] - Cricitical temperature
Pc = 45.99*10^(5);//[N/m^(2)] - Cricitical pressure
Vc = 98.6;//[cm^(3)/mol] - Cricitical molar volume
Zc = 0.286;// Critical compressibility factor
w = 0.012;// Acentric factor

//(1)
//Virial equation of state,Z = 1 + (B*P)/(R*T)
Tr_1 = T/Tc;//Reduced temperature
B_0 = 0.083-(0.422/(Tr_1)^(1.6));
B_1 = 0.139-(0.172/(Tr_1)^(4.2));
// We know,(B*Pc)/(R*Tc) = B_0+(w*B_1)
B = ((B_0+(w*B_1))*(R*Tc))/Pc;//[m^(3)/mol]//second virial coefficient
Z = 1 + (B*P)/(R*T);//compressibility factor
//(P*V)/(R*T)=1+(B*P)/(R*T),and thus,
V_1  = (Z*R*T)/P;//[m^(3)/mol]
printf(" (1).The molar volume of methane using given virial equation is %e m^(3)/mol\n",V_1);

//(2).
//Virial equation of state,Z = 1 + (B/V)
//Also,Z = (P*V)/(R*T). Substituting the value of Z,we get
// V^(2) - ((R*T)/P)*V - ((B*R*T)/P) = 0.Solving the quadratic equation
deff('[y]=f(V)','y=V^(2)-((R*T)/P)*V-((B*R*T)/P)');
V2_1=fsolve(0,f);
V2_2=fsolve(1,f);
// Out of two roots,we will consider only positive root
printf(" (2).The molar volume of methane using given virial equation is %e m^(3)/mol\n",V2_2);

// (3)
// Van der Walls equation of state,
// (P + (a/V^(2)))*(V - b) = R*T
a_3 = (27*(R^(2))*(Tc^(2)))/(64*Pc);//[Pa*m^(6)/mol^(2)]
b_3 = (R*Tc)/(8*Pc);//[m^(3)/mol]
// The cubic form of van der Walls equation of state is given by,
// V^(3) - (b + (R*T)/P)*V^(2) + (a/P)*V - (a*b)/P = 0
// Solving the cubic equation
deff('[y]=f1(V)','y=V^(3)-(b_3+(R*T)/P)*V^(2)+(a_3/P)*V-(a_3*b_3)/P');
V3_1=fsolve(1,f1);
V3_2=fsolve(10,f1);
V3_3=fsolve(100,f1);
// The above equation has 1 real and 2 imaginary roots. We consider only real root.
printf(" (3).The molar volume of methane using van der Walls equation of state is %e m^(3)/mol\n",V3_1);

// (4)
// Redlich Kwong equation of state
a_4 = (0.42748*(R^(2))*(Tc^(2.5)))/Pc;//[Pa*m^(6)*K^(1/2)/mol]
b_4 = (0.08664*R*Tc)/Pc;//[m^(3)/mol]
// The cubic form of Redlich Kwong equation of state is given by,
// V^(3) - ((R*T)/P)*V^(2) - ((b_1^(2)) + ((b_1*R*T)/P) - (a/(T^(1/2)*P))*V - (a*b)/(T^(1/2)*P) = 0
// Solving the cubic equation
deff('[y]=f2(V)','y=V^(3)-((R*T)/P)*V^(2)-((b_4^(2))+((b_4*R*T)/P)-(a_4/(T^(1/2)*P)))*V-(a_4*b_4)/(T^(1/2)*P)');
V4_1=fsolve(1,f2);
V4_2=fsolve(10,f2);
V4_3=fsolve(100,f2);
//The above equation has 1 real and 2 imaginary roots. We consider only real root.
printf(" (4).The molar volume of methane using Redlich Kwong equation of state is %e m^(3)/mol\n",V4_1);

// (5)
// Using Peng-Robinson equation of state 
m = 0.37464 + 1.54226*w - 0.26992*w^(2);
Tr_5 = T/Tc;
alpha = (1 + m*(1 - Tr_5^(1/2)))^(2);
a = ((0.45724*(R*Tc)^(2))/Pc)*alpha;//[Pa*m^(6)/mol^(2)]
b = (0.07780*R*Tc)/Pc;//[m^(3)/mol]
// Cubic form of Peng-Robinson equation of stste is given by
// V^(3)+(b-(R*T)/P)*V^(2)-((3*b^(2))+((2*R*T*b)/P)-(a/P))*V+b^(3)+((R*T*(b^(2))/P)-((a*b)/P)=0;
// Solving the cubic equation
deff('[y]=f3(V)','y=V^(3)+(b-(R*T)/P)*V^(2)-((3*b^(2))+((2*R*T*b)/P)-(a/P))*V+b^(3)+((R*T*(b^(2)))/P)-((a*b)/P)');
V5_1=fsolve(-1,f3);
V5_2=fsolve(0,f3);
V5_3=fsolve(1,f3);
//The largest root is for vapour phase,
//The largest root is only considered as the systemis gas
printf(" (5).The molar volume of methane using Peng-Robinson equation of state is %e m^(3)/mol\n",V5_3);
