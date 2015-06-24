clear;
clc;

// Illustration 4.5
// Page: 98
printf('Illustration 4.5 - Page: 98\n\n');
printf('Illustration 4.5 (a)\n\n');

// solution (a)

//****Data****//
// a = H2 b = N2
Dab_eff = 5.3*10^(-6);// [square m/s]
Dkb_eff = 1.17*10^(-5);// [square m/s]
Dab = 7.63*10^(-5);// [square m/s]
//*******//

R = 8314;//[Nm/kmol]
Mb = 2.02;// [kg/kmol]
T = 293;// [K]
Dtrue_by_Deff = Dab/Dab_eff;
// Since the ratio is strictly a matter of the geometry of the solid.
Dkb = Dkb_eff*Dtrue_by_Deff;// [square m/s]
// From Eqn. 4.20
d = 3*Dkb*((%pi*Mb)/(8*R*T))^0.5;// [m]
printf('The equivalent pore diameter is: %e m\n\n',d);

printf('Illustration 4.5 (b)\n\n');

// Solution (b)

//****Data*****//
// a = O2 b = N2 c = H2
Ya1 = 0.8;
Ya2 = 0.2;
Pt = 10133;// [N/square m]
z = 0.002;// [m]
T = 293;// [K]
//*******//

// From Table 2.1 (Pg 31):
Dab = 1.81*10^(-5);// [square m/s] at STP
Dkc = 1.684*10^(-4);// [square m/s] From Illustration 4.5(a)
Mc = 2.02;// [kg/kmol]
Ma = 32;// [kg/kmol]
Mb = 28.02;// [kg/kmol]
Dab = Dab*(1/0.1)*((293/273)^1.5);// [square m/s] at 0.1 atm & 20 C
DabEff = Dab/14.4;// [square m/s] From Illustration 4.5(a)
Dka = Dkc*((Mc/Ma)^0.5);// [square m/s]
DkaEff = Dka/14.4;// [square m/s]
Nb_by_Na = -(Ma/Mb)^0.5;
// Na/(Na+Nb) = 1/(1+(Nb/Na))
Na_by_NaSumNb = 1/(1+(Nb_by_Na));
DabEff_by_DkaEff = DabEff/DkaEff;
// By Eqn. 4.23
Na = (Na_by_NaSumNb)*(DabEff*Pt/(R*T*z))*log((((Na_by_NaSumNb)*(1+DabEff_by_DkaEff))-Ya2)/(((Na_by_NaSumNb)*(1+DabEff_by_DkaEff))-Ya1));// [kmol/square m.s]
Nb = Na*(Nb_by_Na);// [kmol/square m.s]
printf("Diffusion flux of O2 is %e kmol/square m.s\n",Na);
printf("Diffusion flux of N2 is %e kmol/square m.s\n",Nb);