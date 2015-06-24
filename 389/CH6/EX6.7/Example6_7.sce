clear;
clc;

// Illustration 6.7
// Page: 207

printf('Illustration 6.7 - Page: 207\n\n');

// solution

//****Data****//
// Air
G_prime = 1.10;// [kg/square m.s]
viscocity_G = 1.8*10^(-5);// [kg/m.s]
ScG = 0.6;// [for air water mixture]
Temp1 = 273+20;// [K]

// Water
L_prime = 5.5;// [kg/square m.s]
//*****//

// Air:
Ma = 29;// [kg/kmol]
G = G_prime/Ma;// [kmol/square m.s]
Density_G = (Ma/22.41)*(273/Temp1);
Cpa = 1005;// [N.m/kg.K]
PrG = 0.74;

// Liquid:
kth = 0.587;// [W/m.K]
Cpb = 4187;// [N.m/kg.K]
viscocity_L = 1.14*10^(-3);// [kg/m.s]

// From Table 6.5 (Pg 206)
Ds = 0.0725;// [m]
beeta = 1.508*(Ds^0.376);
shiLtW = (2.09*10^(-6))*(737.5*L_prime)^beeta/(Ds^2);// [square m/cubic m]
shiLsW = 2.47*10^(-4)/(Ds^1.21);// [square m/cubic m]
shiLoW = shiLtW-shiLsW;// [square m/cubic m]
// From Table 6.4 (Pg 205)
m = 34.03;
n = 0;
p = 0.362;
aAW = m*(808*G_prime/Density_G^0.5)^(n)*L_prime^p;// [square m/cubic m]
// From Eqn. 6.75
aVW = 0.85*aAW*shiLtW/shiLoW;// [square m/cubic m]
// From Table 6.3
e = 0.74;
eLo = e-shiLtW;
// From Eqn. 6.70
deff('[y] = f11(Fg)','y = ((Fg*ScG^(2/3))/G)-1.195*((Ds*G_prime)/(viscocity_G*(1-eLo)))^(-0.36)');
Fg = fsolve(1,f11);// [kmol/square m.s]
// Since the liquid is pure water. It has no mass trnsfer coeffecient.
// For such process we need convective heat transfer coeffecient for both liquid & gas.
// Asuming Jd = Jh
// From Eqn. 6.70
Jh = 1.195*((Ds*G_prime)/(viscocity_G*(1-eLo)))^(-0.36);
Hg = Jh*Cpa*G_prime/(PrG^(2/3));// [W/square m.K]
PrL = Cpb*viscocity_L/kth;
// Heat transfer analog of Eqn. 6.72
Hl = 25.1*(kth/Ds)*(Ds*L_prime/viscocity_L)^0.45*PrL^0.5;// [W/square m.K]
printf("The volumetric coeffecients are\n");
printf("Based on Gas Phase %f W/cubic m.K\n",Hg*aVW);
printf("based on Liquid Phase %f W/cubic m.K\n",Hl*aVW);