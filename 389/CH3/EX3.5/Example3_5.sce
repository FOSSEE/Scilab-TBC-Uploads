clear;
clc;

// Illustration 3.5
// Page: 73

printf('Illustration 3.5 - Page: 73\n\n');

// solution

//****Data****//
velocity = 15;// [m/s]
G = 21.3;// [kg/square m.s]
//******//

// Since the experimental data do not include the effects of changing Prandtl number.

// Jh = (h/(Cp*density*viscosity)) = (h/Cp*G)*(Pr^(2/3)) = Shi(Re);

// Shi(Re) must be compatible with 21.3*(G^0.6);
// Let Shi(Re) = b*(Re^n);
// Re = (l*G)/viscosity;

// h = (Cp*G/(Pr^(2/3)))*b*(Re^n);
// h = (Cp*G/(Pr^(2/3)))*b*((l*b/viscosity)^n) = 21.3*(G^0.6);

n = 0.6-1;
// b = 21.3*((Pr^(2/3))/Cp)*((l/viscosity)^(-n));

// Using data for air at 38 C & 1 std atm.
Cp1 = 1002;// [kJ/kg.K]
viscosity1 = 1.85*10^(-5);//[kg/m.s]
k1 = 0.0273;//[W/m.K]
Pr1 = (Cp1*viscosity1)/k1;
b_prime = 21.3*(Pr1^(2/3)/Cp1)*((1/viscosity1)^0.4);
// b = b_prime*l^(0.4);
// Jh = (h/(Cp*G))*Pr^(2/3) = b_prime*((l/Re)^(0.4)) = Shi(Re);

// The heat mass transfer analogy will be used to estimate the mass transfer coefficient. (Jd = Jh)

// Jd = (KG*Pbm*Mav*Sc^(2/3))/(density*viscosity) = Shi(Re) = b_prime*((l/Re)^0.4);

// KG*Pbm = F = (b_prime*density*viscosity)/(Re^0.4*Mav*Sc^(2/3)) = (b_prime*(density*velocity)^0.6*(viscosity^0.4))/(Mav*Sc^(2/3));

// For H2-H20, 38 C, 1std atm
viscosity2 = 9*10^(-6);// [kg/m.s]
density2 = 0.0794;// [kg/cubic m]
Dab = 7.75*10^(-5);// [square m/s]
Sc = viscosity2/(density2*Dab);

// Assuming desity, Molecular weight and viscosity of the gas are essentially those of H2

Mav = 2.02;// [kg/kmol]
F = (b_prime*(density2*velocity)^0.6*(viscosity2^0.4))/(Mav*Sc^(2/3));// [kmol/square m.s]
printf('The required mass transfer: %f kmol/square m.s',F);