clear;
clc;

// Illustration 7.14
// Page: 256

printf('Illustration 7.14 - Page: 256\n\n');

// solution

//****Data****//
// a = N2 b = CO
// Entering gas
Y1_prime = 0;// [kg water/kg dry air]
Pt = 1;// [atm]
Tempg1 = 315;// [OC]
G_prime = 5;// [square m/s]

// Temp of the tower:
Templ2 = 18;// [OC]
Density_L2 = 1000; //[kg/square m]
viscocity_L2 = 1.056*10^(-3);// [kg/m.s]
Tempg2 = 27;// [OC]

Mb = 28;// [kg/kmol]
Ma = 18.02;// [kg/kmol]
Density_G1 = (Mb/22.41)*(273/(Tempg1+273));// [kg/square m]
G1 = G_prime*(Density_G1);// [kg/s]

// Since the outlet gas is nearly saturated:
Y_prime = 0.024;// [kg water/kg dry air]
Y2_prime = 0.022;// [kg water/kg dry air, assumed]
G2 = G1*(1+Y2_prime);// [kg/s]
Mav = (1+Y2_prime)/((1/Mb)+(Y2_prime/Ma));// [kg/kmol]
Density_G2 = (Mav/22.4)*(273/(Templ2+273));// [kg/square m]
L2_by_G2 = 2;
abcissa = L2_by_G2*(Density_G2/(Density_L2-Density_G2))^(1/2);
// From Fig. 6.34:
// For a gas pressure drop of 400 N/square m/m
ordinate = 0.073;
// From Table 6.3:
Cf = 65;
J = 1;
deff('[y] = f21(G2_prime)','y = ((G2_prime^2)*Cf*(viscocity_L2^0.1)*J/(Density_G2*(Density_L2-Density_G2)))-ordinate');
// Tentative data:
G2_prime = fsolve(2,f21);// [kg/square m.s]
Area = G1/G2_prime;// [square m]
dia = sqrt(4*Area/%pi);// [m]

// Final data:
dia = 1.50;// [m]
Area = %pi*dia^2/4;// [square m]
Gs_prime = G1/Area;// [kg/square m.s]
G2_prime = G2/Area;// [kg/square m.s]
L2_prime = L2_by_G2*G2_prime;// [kg/square m.s]
// From Eqn. 7.29:
deff('[y] = f22(L1_prime)','y = (L2_prime-L1_prime)-(Gs_prime*(Y2_prime-Y1_prime))');
L1_prime = fsolve(2,f22);
Cb = 1089;// [J/kg.K]
Ca = 1884;// [J/kg.K]
Cs1 = Cb+(Y1_prime*Ca);// [J/(kg dry air).K]
Cs2 = Cb+(Y2_prime*Ca);// [J/(kg dry air).K]
Tempo = Templ2;// [base temp.,K]
lambda = 2.46*10^6;// [J/kg]
CaL = 4187;// [J/kg K]
// From Eqn. 7.31:
deff('[y] = f23(Templ1)','y = ((L2_prime*CaL*(Templ2-Tempo))+(Gs_prime*Cs1*(Tempg1-Tempo)))-((L1_prime*CaL*(Templ1-Tempo))+(Gs_prime*(Cs2*(Tempg2-Tempo))+(Y2_prime*lambda)))');
Templ1 = fsolve(2,f23);
// At Templ1 = 49.2 OC
viscocity_L = 0.557*10^(-3);// [kg/m.s]
Density_L = 989;// [kg/square m]
K = 0.64;// [w/m.K]
Prl = CaL*viscocity_L/K;

// For Entering Gas:
viscocity_G1 = 0.0288*10^(-3);// [kg*/m.s]
Dab = 0.8089*10^(-4);// [square m/s]
ScG = viscocity_G1/(Density_G1*Dab);
PrG = 0.74;

// From Illustration 6.7:
a = 53.1;// [square m/square m]
Fga = 0.0736;// [kmol/square m]
Hga = 4440;// [W/square m.K]
Hla = 350500;// [W/square m.K]
// At the bottom, by several trial:
Tempi = 50.3;// [OC]
pai = 93.9/760;// [atm]
paG = 0;// [atm]
// By Eqn. 7.64:
dY_prime_by_dZ = -(Ma*Fga/Gs_prime)*log((1-(pai/Pt))/(1-(paG/Pt)));// [(kg H2O/kg dry gas)/m]
Hg_primea = -(Gs_prime*Ca*dY_prime_by_dZ)/(1-exp((Gs_prime*Ca*dY_prime_by_dZ)/(Hga)));// [W/square m.K]
dTempg_by_dZ = -(Hg_primea*(Tempg1-Tempi)/(Gs_prime*Cs1));// [OC/m]
Tempi = (Templ1)+((Gs_prime*(Cs1*dTempg_by_dZ)+((Ca*(Tempg1))-(CaL*(Templ1))+(((CaL-Ca)*(Tempo))+lambda))*dY_prime_by_dZ)/((Gs_prime*CaL*dY_prime_by_dZ)-Hla));// [OC]
// Assume:
delta_Tempg = -30;// [OC]
delta_Z = delta_Tempg/(dTempg_by_dZ);// [m]
Tempg = Tempg1+delta_Tempg;// [OC]
Y_prime = Y1_prime+(dY_prime_by_dZ)*delta_Z;// [kg H2O/kg dry gas]
paG = Y_prime/(Y_prime+(Ma/Mb));// [atm]
Cs = Cb+Ca*(Y_prime);// [J/(kg dry air).K]
// Water balance, From Eqn. 7.29:
deff('[y] = f24(L_prime)','y = (L2_prime-L_prime)-(Gs_prime*(Y_prime-Y1_prime))');
L_prime = fsolve(2,f24);// [kg/square m.s]

deff('[y] = f25(Templ)','y = ((L_prime*CaL*(Templ-Tempo))+(Gs_prime*Cs1*(Tempg1-Tempo)))-((L1_prime*CaL*(Templ1-Tempo))+(Gs_prime*(Cs*(Tempg-Tempo))+(Y_prime*lambda)))');
Templ = fsolve(2,f25);
// This process is repeated several times until gas temp falls to Tempg2
// The value of Y2_prime was calculated to be 0.0222 which is sufficiently close to the assumed value.
// Z = sum of all delta_Z
Z = 1.54;// [m]
printf("The diameter of tower is %f m\n",dia);
printf("The packed height is %f m\n",Z);