clear;
clc;
funcprot(0);

//Example - 10.28
//Page number - 374
printf("Example - 10.28 and Page number - 375\n\n");

//Given
T = 150 + 273.15;//[K]
Tc = 647.1;//[K]
Pc = 220.55;//[bar]
Pc = Pc*10^(5);//[Pa]
w = 0.345;
R = 8.314;//[J/mol-K] - Universal gas constant

// Let us assume a pressure of 100 kPa.
P_1 = 100*10^(3);//[Pa]

// At 100 kPa and 423.15 K, from Peng-Robinson equation of stste 
m = 0.37464 + 1.54226*w - 0.26992*w^(2);
Tr = T/Tc;
alpha = (1 + m*(1 - Tr^(1/2)))^(2);
a = ((0.45724*(R*Tc)^(2))/Pc)*alpha;//[Pa*m^(6)/mol^(2)]
b = (0.07780*R*Tc)/Pc;//[m^(3)/mol]
// Cubic form of Peng-Robinson equation of stste is given by
// V^(3)+(b-(R*T)/P)*V^(2)-((3*b^(2))+((2*R*T*b)/P)-(a/P))*V+b^(3)+((R*T*(b^(2))/P)-((a*b)/P)=0;
// Solving the cubic equation
deff('[y]=f(V)','y=V^(3)+(b-(R*T)/P_1)*V^(2)-((3*b^(2))+((2*R*T*b)/P_1)-(a/P_1))*V+b^(3)+((R*T*(b^(2)))/P_1)-((a*b)/P_1)');
V1 = fsolve(-1,f);
V2 = fsolve(0,f);
V3 = fsolve(1,f);
// The largest root and the smallest root is considered for liquid phase and vapour phase respectively.
V_liq = V1;//[m^(3)/mol] - Molar volume in liquid phase
V_vap = V3;//[m^(3)/mol] - Molar volume in vapour phase

// The compressibility factor is given by
Z_vap = (P_1*V_vap)/(R*T);// For liquid phase
Z_liq = (P_1*V_liq)/(R*T);// For vapour phase

// The expression for fugacity of Peng Robinson equation is
// log(f/P) = (Z-1) - log(Z-((P*b)/(R*T))) - (a/(2*2^(1/2)*b*R*T))*log((Z+(1+2^(1/2))*((P*b)/(R*T)))/((Z+(1-2^(1/2))*((P*b)/(R*T)))
// For vapour phase
f_P_vap = exp((Z_vap-1) - log(Z_vap-((P_1*b)/(R*T))) - (a/(2*2^(1/2)*b*R*T))*log((Z_vap+(1+2^(1/2))*((P_1*b)/(R*T)))/(Z_vap+(1-2^(1/2))*((P_1*b)/(R*T)))));
// For liquid phase
f_P_liq = exp((Z_liq-1) - log(Z_liq-((P_1*b)/(R*T))) - (a/(2*2^(1/2)*b*R*T))*log((Z_liq+(1+2^(1/2))*((P_1*b)/(R*T)))/(Z_liq+(1-2^(1/2))*((P_1*b)/(R*T)))));

// Therefore f_liq/f_vap can be calculated as
fL_fV = (f_P_liq/f_P_vap);

// The two values (f/P)_vap and (f/P)_vap are not same [ (f_P_liq/f_P_vap) >1 ]; therefore another pressure is to be assumed. The new pressure be
P_new = P_1*(f_P_liq/f_P_vap);//[Pa]

// At P_new and 423.15 K, from Peng-Robinson equation of stste 

// V^(3)+(b-(R*T)/P)*V^(2)-((3*b^(2))+((2*R*T*b)/P)-(a/P))*V+b^(3)+((R*T*(b^(2))/P)-((a*b)/P)=0;
// Solving the cubic equation
deff('[y]=f(V)','y=V^(3)+(b-(R*T)/P_new)*V^(2)-((3*b^(2))+((2*R*T*b)/P_new)-(a/P_new))*V+b^(3)+((R*T*(b^(2)))/P_new)-((a*b)/P_new)');
V4 = fsolve(-1,f);
V5 = fsolve(0,f);
V6 = fsolve(1,f);
// The largest root and the smallest root is considered for liquid phase and vapour phase respectively.
V_liq_2 = V4;//[m^(3)/mol] - Molar volume in liquid phase
V_vap_2 = V6;//[m^(3)/mol] - Molar volume in vapour phase

// The compressibility factor is given by
Z_vap_2 = (P_new*V_vap_2)/(R*T);// For liquid phase
Z_liq_2 = (P_new*V_liq_2)/(R*T);// For vapour phase

// For vapour phase
f_P_vap_2 = exp((Z_vap_2-1) - log(Z_vap_2-((P_new*b)/(R*T))) - (a/(2*2^(1/2)*b*R*T))*log((Z_vap_2+(1+2^(1/2))*((P_new*b)/(R*T)))/(Z_vap_2+(1-2^(1/2))*((P_new*b)/(R*T)))));
// For liquid phase
f_P_liq_2 = exp((Z_liq_2-1) - log(Z_liq_2-((P_new*b)/(R*T))) - (a/(2*2^(1/2)*b*R*T))*log((Z_liq_2+(1+2^(1/2))*((P_new*b)/(R*T)))/(Z_liq_2+(1-2^(1/2))*((P_new*b)/(R*T)))));

// Therefore f_liq/f_vap can be calculated as
fL_fV_2 = (f_P_liq_2/f_P_vap_2);

// And new pressure is given by
P_new_prime = P_new*(f_P_liq_2/f_P_vap_2);//[Pa]
P_new_prime = P_new_prime*10^(-5);

// Since the change in pressure is small, so we can take this to be the vapour pressure at 150 C

printf(" The vapour pressure of water using Peng-Robinson equation of stste  is %f bar\n",P_new_prime);



