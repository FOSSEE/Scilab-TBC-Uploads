//clc()
m = 1000;//kg/h ( feed solution )
//F - mass of feed distilled, W - mass of the bottom product, D - mass of the distillate, xf, xd and xw - weight fraction of actone in feed, distillate and residue resp.
//total balance, F = D + W
//Acetone balance, F*xf = D*xd + w*xw
F = 1000;
xf = 0.10;
xd = 0.9;
xw = 0.01;
//substituting in above equations,
D = F * (xf - xw) / (xd - xw);
W = F - D;
R = 8;
L = R * D;
//material balance around the condenser,G vapour reaching the condenser
G = L + D;
Td = 332;//K
T2 = 300;//K
Tw = 370;//K
Tf = 340;//K
Lacetone1 = 620;//kJ/kg
Lwater1 = 2500;//kJ/kg
Ld = xd * Lacetone1 + (1 - xd) * Lwater1;
Cpacetone = 2.2;//kJ/kgK
Cpwater = 4.2;//kJ/kgK
Cp = xd * Cpacetone + (1-xd)*Cpwater;
H = Ld + Cp * ( Td - T2 );
Cpc = 4.2;//kJ/kg
Tc = 30;//K ( change in temperature allowable for cooling water )
m = G * H / ( Cpc * Tc );
disp("kg/h",m,"(a)The circulation rate of cooling water = ")
Qc = G * H;
Hd = 0;
Hw = (xw * Cpacetone + (1-xw)*Cpwater)*(Tw - T2);
Hf = (xf * Cpacetone + (1-xf)*Cpwater)*(Tf - T2);
Qb = D * Hd + W * Hw + Qc - F * Hf;
Hcondensation = 2730;//kJ/kg
msteam = Qb/Hcondensation;
disp("kg/h",msteam,"(b)Amount of steam supplied = ")