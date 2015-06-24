clear;
clc;

// Illustration 8.8
// Page: 317

printf('Illustration 8.8 - Page: 317\n\n');

// Solution

//***Data***
// a:NH3 b:air c:H2O
ya = 0.416;// [mole fraction]
yb = 0.584;// [mole fraction]
G1 = 0.0339;// [kmol/square m.s]
L1 = 0.271;// [kmol/square m.s]
TempG1 = 20;// [OC]
//********//

// At 20 OC
Ca = 36390;// [J/kmol]
Cb = 29100;// [J/kmol]
Cc = 33960;// [J/kmol]
lambda_c = 44.24*10^6;// [J/kmol]
// Enthalpy base = NH3 gas, H2O liquid, air at 1 std atm.
Tempo = 20;// [OC]
lambda_Ao = 0;// [J/kmol]
lambda_Co = 44.24*10^6;// [J/kmol]

// Gas in:
Gb = G1*yb;// [kmol air/square m.s]
Ya1 = ya/(1-ya);// [kmol NH3/kmol air]
yc1 = 0;// [mole fraction]
Yc1 = yc1/(1-yc1);// [kmol air/kmol NH]
// By Eqn 8.58:
Hg1 = (Cb*(TempG1-Tempo))+(Ya1*(Ca*(TempG1-Tempo))+lambda_Ao)+(Yc1*(Cc*(TempG1-Tempo)+lambda_Co));// [J/kmol air]

// Liquid in:
xa1 = 0;// [mole fraction]
xc1 = 1;// [mole fraction]
Hl1 = 0;// [J/kmol air]

//Gas out:
Ya2 = Ya1*(1-0.99);// [kmol NH3/kmol air]
// Assume:
TempG2 = 23.9;// [OC]
yc2 = 0.0293;
deff('[y] = f(Yc2)','y = yc2-(Yc2/(Yc2+Ya2+1))');
Yc2 = fsolve(0.002,f);// [kmol H2O/kmol air]
Hg2 = (Cb*(TempG2-Tempo))+(Ya2*(Ca*(TempG2-Tempo))+lambda_Ao)+(Yc2*(Cc*(TempG2-Tempo)+lambda_Co));// [J/kmol air]

// Liquid out:
Lc = L1-(Yc1*Gb);// [kmol/square m.s]
La = Gb*(Ya1-Ya2);// [kmol/square m.s]
L2 = La+Lc;// [kmol/square m.s]
xa = La/L2;
xc = Lc/L2;
// At xa & tempo = 20 OC
delta_Hs = -1709.6*1000;// [J/kmol soln]

// Condition at the bottom of the tower:
// Assume:
TempL = 41.3;// {OC}
// At(TempL+TempG1)/2:
Cl = 75481;// [J/kmol]
deff('[y] = f40(Cl)','y = Hl1+Hg1-((Gb*Hg2)+(L2*(Cl*(TempL-Tempo)+delta_Hs)))');
Cl = fsolve(7,f40);// [J/kmol.K]

// For the Gas:
MavG = 24.02;// [kg/kmol]
Density_G = 0.999;// [kg/cubic m]
viscosity_G  =  1.517*10^(-5);// [kg/m.s]
kG  =  0.0261;// [W/m.K]
CpG  =  1336;// [J/kg.K]
Dab  =  2.297*10^(-5);// [square m/s]
Dac  =  3.084*10^(-5);// [square m/s]
Dcb  =  2.488*10^(-5);// [square m/s]
PrG  =  CpG*viscosity_G/kG;

// For the liquid:
MavL  =  17.97;// [kg/kmol]
Density_L  =  953.1;// [kg/cubic m]
viscosity_L  =  6.408*10^(-4);// [kg/m.s]
Dal  =  3.317*10^(-9);// [square m/s]
kl = 0.4777;// [W/m.K]
ScL = viscosity_L/(Density_L*Dal);
PrL = 5.72;
sigma = 3*10^(-4);
G_prime = G1*MavG;// [kg/square m.s]
L_prime = L2*MavL;// [kg/square m.s]
// From data of Chapter 6:
Ds = 0.0472;// [m]
a = 57.57;// [square m/cubic m]
shiLt = 0.054;
e = 0.75;
// By Eqn. 6.71:
eLo = e-shiLt;
// By Eqn. 6.72:
kL = (25.1*Dal/Ds)*(Ds*L_prime/viscosity_L)^0.45*ScL^0.5;// [m/s]
c = Density_L/MavL;// [kmol/cubic m]
Fl = kL*c;// [kmol/cubic m]
// The heat mass transfer analogy of Eqn. 6.72:
hL = (25.1*kl/Ds)*(Ds*L_prime/viscosity_L)^0.45*PrL^0.5;// [m/s]
// The heat transfer analogy of Eqn. 6.69:
hG = (1.195*G_prime*CpG/PrG^(2/3))*(Ds*G_prime/(viscosity_G*(1-eLo)))^(-0.36);// [W/square m.K]
// To obtain the mass transfer coeffecients:
Ra = 1.4;
Rc = 1-Ra;
// From Eqn. 8.83:
Dam = (Ra-ya)/(Ra*((yb/Dab)+((ya+yc1)/Dac))-(ya/Dac));// [square m/s]
Dcm = (Rc-yc1)/(Rc*((yb/Dcb)+((ya+yc1)/Dac))-(yc1/Dac));// [square m/s]
ScGa = viscosity_G/(Density_G*Dam);
ScGc = viscosity_G/(Density_G*Dcm);
// By Eqn. 6.69:
FGa = (1.195*G1/ScGa^(2/3))*(Ds*G_prime/(viscosity_G*(1-eLo)))^(-0.36);// [kmol/square m.K]
FGc = (1.195*G1/ScGc^(2/3))*(Ds*G_prime/(viscosity_G*(1-eLo)))^(-0.36);// [kmol/square m.K]
Ra = Ra-0.1;
// From Eqn. 8.80:
scf(14);
for i = 1:3
    deff('[yai] = f41(xai)','yai = Ra-(Ra-ya)*((Ra-xa)/(Ra-xai))^(Fl/FGa)');
    xai = xa:0.01:0.10;
    plot(xai,f41)
    Ra = Ra+0.1;
end
xgrid();
xlabel("Mole fraction NH3 in the liquid, xa");
ylabel("Mole fraction NH3 in the gas ya");
title("Operating Line curves");
Rc = Rc-0.1;
// From Eqn. 8.81:
scf(15);
for i = 1:3
    deff('[yci] = f42(xci)','yci = Rc-(Rc-yc1)*((Rc-xc)/(Rc-xci))^(Fl/FGc)');
    xci = xc:-0.01:0.85;
    plot(xci,f42)
    Rc = Rc+0.1;
end
xgrid();
xlabel("Mole fraction H2O in the liquid, xc");
ylabel("Mole fraction H2O in the gas, yc");
title("Operating line Curves");
// Assume:
Tempi = 42.7;// [OC]
// The data of Fig. 8.2 (Pg 279) & Fig 8.4 (Pg 319) are used to draw the eqb curve of Fig 8.25 (Pg 320).
// By interpolation of operating line curves with eqb line and the condition: xai+xci = 1;
Ra = 1.38;
Rc = 1-Ra;
xai = 0.0786;
yai = f41(xai);
xci = 1-xai;
yci = f42(xci);
// From Eqn. 8.77:
dYa_By_dZ = -(Ra*FGa*a/Gb)*log((Ra-yai)/(Ra-ya));// [kmol H2O/kmol air]
// From Eqn. 8.78:
dYc_By_dZ = -(Rc*FGc*a/Gb)*log((Rc-yci)/(Rc-yc1));// [kmol H2O/kmol air]
// From Eqn. 8.82:
hGa_prime = -(Gb*((Ca*dYa_By_dZ)+(Cc*dYc_By_dZ)))/(1-exp(Gb*((Ca*dYa_By_dZ)+(Cc*dYc_By_dZ))/(hG*a)));// [W/cubic m.K]
// From Eqn. 8.79:
dtG_By_dZ = -(hGa_prime*(TempG1-Tempi))/(Gb*(Cb+(Ya1*Ca)+(Yc1*Cc)));// [K/m]
// When the curves of Fig. 8.2 (pg 279) & 8.24 (Pg 319) are interpolated for concentration xai and xci, the slopes are:
mar = 0.771;
mcr = 1.02;
lambda_c = 43.33*10^6;// [J/kmol]
// From Eqn. 8.3:
Hai = Ca*(Tempi-Tempo)+lambda_Ao-(mar*lambda_c);// [J/kmol]
Hci = Cc*(Tempi-Tempo)+lambda_Co-(mcr*lambda_c);// [J/kmol]
// From Eqn. 8.76
Tempi2 = TempL+(Gb/(hL*a))*(((Hai-Ca*(TempG1-Tempo)-lambda_Ao)*dYa_By_dZ)+((Hci-Cc*(TempG1-Tempo)-lambda_Co)*dYc_By_dZ)-((Cb+(Ya1*Ca)+(Yc1*Cc))*dtG_By_dZ));// [OC]
// The value of Tempi obtained is sufficiently close to the value assumed earlier.

deltaYa=-0.05;
// An interval of deltaYa up the tower
deltaZ = deltaYa/(dYa_By_dZ);// [m]
deltaYc = (dYc_By_dZ*deltaZ);
// At this level:
Ya_next = Ya1+deltaYa;// [kmol/kmol air]
Yc_next = Yc1+deltaYc;// [kmol H2O/kmol air]
tG_next = TempG1+(dtG_By_dZ*deltaZ);// [OC]
L_next = L1+Gb*(deltaYa+deltaYc);// [kmol/square m.s]
xa_next = ((Gb*deltaYa)+(L1*xa))/L_next;// [mole fraction NH3]
Hg_next = (Cb*(tG_next-Tempo))+(Ya_next*(Ca*(tG_next-Tempo))+lambda_Ao)+(Yc_next*(Cc*(tG_next-Tempo)+lambda_Co));// [J/kmol air]
Hl_next = (L1*Hl1)+(Gb*(Hg_next-Hg2)/L_next);// [J/kmol]
// The calculation are continued where the specified gas outlet composition are reached.
// The packed depth is sum of all deltaZ
Z = 1.58;// [m]
printf("The packed depth is: %f m\n",Z);