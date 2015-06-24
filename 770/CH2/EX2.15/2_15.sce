clear;
clc;

// Example - 2.15
// Page number - 67
printf("Example - 2.15 and Page number - 67\n\n");

//Given
T = 250+273.15;//[K]
R = 8.314;//[J/mol*K]
P = 39.76;//[bar] Vapour pressure of water at T
P = P*10^(5);//[N/m^(2)]
Tc = 647.1;//[K] - Cricitical temperature
Pc = 220.55*10^(5);//[N/m^(2)] - Cricitical pressure
w = 0.345;//Acentric factor
M = 18.015;// Molecular weight of water

// Using peng-Robinson equation of stste 
m = 0.37464 + 1.54226*w - 0.26992*w^(2);
Tr = T/Tc;
alpha = (1 + m*(1 - Tr^(1/2)))^(2);
a = ((0.45724*(R*Tc)^(2))/Pc)*alpha;//[Pa*m^(6)/mol^(2)]
b = (0.07780*R*Tc)/Pc;//[m^(3)/mol]
// Cubuc form of Peng-Robinson equation of stste is given by
// V^(3) + (b-(R*T)/P)*V^(2) - ((3*b^(2)) + ((2*R*T*b)/P) - (a/P))*V+b^(3) + ((R*T*(b^(2))/P) - ((a*b)/P) = 0;
// Solving the cubic equation
deff('[y]=f(V)','y=V^(3)+(b-(R*T)/P)*V^(2)-((3*b^(2))+((2*R*T*b)/P)-(a/P))*V+b^(3)+((R*T*(b^(2)))/P)-((a*b)/P)');
V_1 = fsolve(-1,f);
V_2 = fsolve(0,f);
V_3 = fsolve(1,f);
//The largest root is for vapour phase,
V_vap = V_3;//[m^(3)/mol] - Molar volume (saturated vapour)
V_vap = V_vap*10^(6)/M;//[cm^(3)/g]

printf(" The moar volume of saturated water in the vapour phase (V_vap) is %f cm^(3)/g\n",V_vap);

//The smallest root is for liquid phase,
V_liq = V_1;//[m^(3)/mol] - molar volume (saturated liquid)
V_liq = V_liq*10^(6)/M;//[cm^(3)/g]
printf(" The moar volume of saturated water in the liquid phase (V_liq) is %f cm^(3)/g\n",V_liq);

//From steam table at 250 C, V_vap = 50.13 [cm^(3)/g] and V_liq = 1.251 [cm^(3)/g].
printf(" From steam table at 250 C, V_vap = 50.13 [cm^(3)/g] and V_liq = 1.251 [cm^(3)/g]");

