clear;
clc;

// Illustration 6.6
// Page: 204

printf('Illustration 6.6 - Page: 204\n\n');

// solution

//****Data****//
// Gas
Mavg_G = 11;// [kg/kmol]
viscocity_G = 10^(-5);// [kg/m.s]
Pt = 107;// [kN/square m]
Dg = 1.30*10^(-5);// [square m/s]
Temp = 273+27;// [K]
G_prime = 0.716;// [kg/square m.s]

// Liquid:
Mavg_L = 260;
viscocity_L = 2*10^(-3);// [kg/m.s]
Density_L = 840;// [kg/cubic m]
sigma = 3*10^(-2);// [N/m]
Dl = 4.71*10^(-10);// [square m/s]
//******//

//Gas:
Density_G = (Mavg_G/22.41)*(Pt/101.33)*(273/Temp);// [kg/cubic m]
ScG = viscocity_G/(Density_G*Dg);
G = G_prime/Mavg_G;// [kmol/square m.s]

// Liquid:
L_prime = 2.71;// [kg/square m.s]
ScL = viscocity_L/(Density_L*Dl);

// Holdup:
// From Table 6.5 (Pg 206), L_prime = 2.71 kg/square m.s
Ds = 0.0472;// [m]
beeta = 1.508*Ds^0.376;
shiLsW = 5.014*10^(-5)/Ds^1.56;// [square m/cubic m]
shiLtW = (2.32*10^(-6))*(737.5*L_prime)^beeta/(Ds^2);// [square m/cubic m]
shiLoW = shiLtW-shiLsW;// [square m/cubic m]
H = (1404*(L_prime^0.57)*(viscocity_L^0.13)/((Density_L^0.84)*((3.24*L_prime^0.413)-1)))*(sigma/0.073)^(0.2817-0.262*log10(L_prime));
shiLo = shiLoW*H;// [square m/cubic m]
shiLs = 4.23*10^(-3)*(viscocity_L^0.04)*(sigma^0.55)/((Ds^1.56)*(Density_L^0.37));// [square m/cubic m]
shiLt = shiLo+shiLs;// [square m/cubic m]

// Interfacial Area:
// From Table 6.4 (Pg 205)
m = 62.4;
n = (0.0240*L_prime)-0.0996;
p = -0.1355;
aAW = m*((808*G_prime/(Density_G^0.5))^n)*(L_prime^p);// [square m/cubic m]
// From Eqn. 6.73
aA = aAW*shiLo/shiLoW;// [square m/cubic m]
// From Table 6.3 (Pg 196)
e = 0.75;
// From Eqn. 6.71
eLo = e-shiLt;
// From Eqn. 6.70
deff('[y] = f9(Fg)','y = ((Fg*ScG^(2/3))/G)-1.195*((Ds*G_prime)/(viscocity_G*(1-eLo)))^(-0.36)');
Fg = fsolve(1,f9);// [kmol/square m.s]
// From Eqn. 6.72:
deff('[y] = f10(Kl)','y = (Kl*Ds/Dl)-(25.1*(Ds*L_prime/viscocity_L)^0.45)*ScL^0.5');
Kl = fsolve(1,f10);// [(kmol/square m.s).(kmol/cubic m)]
// Since the value of Kl is taken at low conc., it can be converted into Fl
c = (Density_L/Mavg_L);// [kmol/cubic m]
Fl = Kl*c;// [kmol/cubic m]
printf("The volumetric coeffecients are\n");
printf("Based on Gas Phase %f kmol/cubic m.s\n",Fg*aA);
printf("based on Liquid Phase %f kmol/cubic m.s\n",Fl*aA);