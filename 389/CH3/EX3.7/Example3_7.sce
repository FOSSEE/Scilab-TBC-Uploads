clear;
clc;

// Illustration 3.7
// Page: 80

printf('Illustration 3.7 - Page: 80\n\n');

// solution

//****Data*****//
// a = water b = air
out_dia = 0.0254;// [m]
wall_thick = 0.00165;// [m]
avg_velocity = 4.6;// [m/s]
T1 = 66;// [C]
P = 1;// [atm]
Pa1 = 0.24;// [atm]
k1 = 11400;// [W/(square m.K)]
T2 = 24;// [C]
k2 = 570;// [W/square m.K]
k_Cu = 381;// [w/square m.K]
//******//

// For the metal tube
int_dia = out_dia-(2*wall_thick);// [m]
avg_dia = (out_dia+int_dia)/2;// [mm]
Nb = 0;
Flux_a = 1;
Ya1 = 0.24;
Yb1 = 1-Ya1;
Mav = (Ya1*18.02)+(Yb1*29);// [kg/kmol]
density = (Mav/22.41)*(273/(273+T1));// [kg/cubic m]
viscosity = 1.75*10^(-5);// [kg/m.s]
Cpa = 1880;// [J/kg.K]
Cpmix = 1145;// [J/kg.K]
Sc = 0.6;
Pr = 0.75;
G_prime = avg_velocity*density;// [kg/square m.s]
G = G_prime/Mav;// [kmol/square m.s]
Re = avg_dia*G_prime/viscosity;
// From Table 3.3:
// Jd = Std*Sc^(2/3) = (F/G)*Sc^(2/3) = 0.023*Re^(-0.17);
Jd = 0.023*Re^(-0.17);
F = (0.023*G)*(Re^(-0.17)/Sc^(2/3));

// The heat transfer coeffecient in the absence of mass transfer will be estimated through Jd = Jh
// Jh = Sth*Pr^(2/3) = (h/Cp*G_prime)*(Pr^(2/3)) = Jd
h = Jd*Cpmix*G_prime/(Pr^(2/3));

U = 1/((1/k1)+((wall_thick/k_Cu)*(int_dia/avg_dia))+((1/k2)*(int_dia/out_dia)));// W/square m.K

// Using Eqn. 3.70 & 3.71 with Nb = 0
// Qt = (Na*18.02*Cpa/1-exp(-(Na*18.02*Cpa/h)))*(T1-Ti)+(Lambda_a*Na);
// Qt = 618*(Ti-T2);
// Using Eqn. 3.67, with Nb = 0, Cai/C = pai, Ca1/C = Ya1 = 0.24;
// Na = F*log(((Flux_a)-(pai))/((Flux_a)-(Ya1));

// Solving above three Eqn. simultaneously:
Ti = 42.2;// [C]
pai = 0.0806;// [atm]
Lambda_a = 43.4*10^6;// [J/kmol]
Na = F*log(((Flux_a)-(pai))/((Flux_a)-(Ya1)));// [kmol/square m.s]
Qt1 = 618*(Ti-T2);// [W/square m]
Qt2 = ((Na*18.02*Cpa/(1-exp(-(Na*18.02*Cpa/h))))*(T1-Ti))+(Lambda_a*Na);// [W/square m]

// since the value of Qt1 & Qt2 are relatively close
printf('The local rate of condensation of water is %e kmol/square m.s',Na);