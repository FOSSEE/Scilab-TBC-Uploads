clear;
clc;

// Illustration 3.6
// Page: 77

printf('Illustration 3.6 - Page: 77\n\n');

// solution

//***Data***//
Dp = 0.0125;// [m]
viscosity = 2.4*10^(-5);// [kg/m.s]
Sc = 2;
E = 0.3;
Go = (2*10^(-3))/0.1;// molar superficial mass velocity [kmol/square m.s]
//********//

// a = CO b = Ni(CO)4
// Nb = -(Na/4);
Flux_a = 4/3;
Ca2_by_C = 0;// At the metal interface
// Ca1_by_C = Ya //mole fraction of CO in the bulk

// Eqn. 3.1 becomes: Na = (4/3)*F*log((4/3)/((4/3)-Ya));

// Let G = kmol gas/(square m bed cross section).s
// a = specific metal surface
// z = depth 
// Therefore, Na = -(diff(Ya*G))/(a*diff(z));// [kmol/((square m metal surface).s)];
// For each kmol of CO consumed, (1/4)kmol Ni(CO)4 forms, representing a loss of (3/4) kmol per kmol of CO consumed.
// The CO consumed through bed depth dz is therefore (Go-G)(4/3) kmol;
// Ya = (Go-(Go-G)*(4/3))/G;
// G = Go/(4-(3*Ya));
// diff(YaG) = ((4*Go)/(4-3*Ya)^2)*diff(Ya);

// Substituting in Eqn. 3.64
// -(4*Go/((4-3*Ya)^2*a))*(diff(Ya)/diff(z)) = (4/3)*F*log(4/(4-3*Ya));

// At depth z:
// Mass velocity of CO = (Go-(Go-G)/(4/3))*28;
// Mass velocity of Ni(CO)4 = ((Go-G)*(1/3))*170.7;
// G_prime = 47.6*Go-19.6G; // total mass velocity [kg/square m.s]
// Substituting G leads to:
// G_prime = Go*(47.6-19.6*(4-3*Ya));// [kg/m.s]
// Re = (Dp*G')/viscosity

// With Go = 0.002 kmol/square m.s & Ya in the range 1-0.005, the range of Re is 292-444;
// From table 3.3:
// Jd = (F/G)*(Sc^(2/3)) = (2.06/E)*Re^(-0.575);
// F = (2.06/E*(Sc)^(2/3))*(Go/(4-3*Ya))*Re^(-0.575);

a = 6*(1-E)/Dp;

// Result after arrangement:
Z = integrate('-((4*Go)/((4-(3*Ya))^2*a))*(3/4)*(E*(Sc^(2/3))*(4-(3*Ya))/(2.06*Go)*(1/log(4/(4-(3*Ya)))))*(((Dp/viscosity)*(Go*(47.6-(19.6/(4-(3*Ya))))))^0.575)','Ya',1,0.005);// [m]
printf('The bed depth required to reduce the CO content to 0.005 is %f m', Z);