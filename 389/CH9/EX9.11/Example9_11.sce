clear;
clc;

// Illustration 9.11
// Page: 423

printf('Illustration 9.11 - Page: 423\n\n');

// solution

//****Data****//
// a:ethanol b:water
zF = 0.3;
xa = 0.3;// [mole fraction of ethanol]
Temp = 78.2;// [OC]
Ao = 0.0462;// [Area of perforations,square m]
t = 0.450;// [m]
//******//

Ma = 46.05;// [kg/kmol]
Mb = 18.02;// [kg/kmol]
xb = 1-xa;// [mole fraction of water]
ma = 0.3*Ma/((0.3*Ma)+(xb*Mb));// [mass fraction of ethanol]
mb = 1-ma;// [mass fraction of water]


// Feed:
F1 = 910;// [kg/h]
Xa = F1*ma/Ma;// [moles of ethanol]
Xb = F1*mb/Mb;// [moles of water]
F = Xa+Xb;// [Total moles]
// Distillate:
xD = 0.80;// [mole fraction of ethanol]
// If essentially all the ethanol is removed from the residue:
D = Xa/xD;// [kmol/h]
MavD = (xD*Ma)+((1-xD)*Mb);// [kg/kmol]
D1 = D*MavD;// [kg/h]
Density_G = (MavD/22.41)*(273/(273+Temp));// [kg/cubic meter]
Density_L = 744.9;// [kg/cubic meter]
sigma = 0.021;// [N/m]

// From Table 6.2,Pg 169:
alpha = (0.0744*t)+0.01173;
beeta = (0.0304*t)+0.015;
At = %pi*(0.760^2)/4;// [Tower cross sectional Area, square m]
WByT = 530/760;// [Table 6.1, Pg 162]
Ad = 0.0808*At;// [Downspout area,square m]
Aa = At-(2*Ad);//  [Active area,square m]
// abcissa = (L/G)*(density_G/Density_L)^0.5
// Assume:
abcissa = 0.1;
// From Eqn.6.30:
Cf = (alpha*log10(1/abcissa)+beeta)*(sigma/0.020)^0.2;
// From Eqn. 6.29:
Vf = Cf*((Density_L-Density_G)/Density_G)^(1/2);// [m/s]
An = At-Ad;// [square m]
R = 3;// [Reflux Ratio]
G = D*(R+1);
G1 = (G*22.41/3600)*((273+Temp)/273);// [cubic meter/s]
V = G1/An;// [Vapour velocity,m/s]
percent = (V/Vf)*100;
// Vapour velocity is 58 percent of flooding velocity (amply safe)
L = R*D;// [kmol/h]
L1 = L*MavD;// [kg/h]
abcissa = (L1/(G1*3600*Density_G))*(Density_G/Density_L)^0.5;
// Since the value of abcissa is less than0.1, the calculaed value of Cf is correct.
// Since the feed is at the buubble point.
q = 1;
// From Eqn. 9.126:
L_bar = L+(q*F);// [kmol/h]
// From Eqn. 9.127:
G_bar = G+F*(q-1);// [kmol/h]
// The enthalpy of saturated steam,referred to 0 OC,69 kN/square m:
HGNpPlus1 = 2699;// [kN m/kg]
// This will be the enthalpy as it enters the tower if expanded adiabatically to the tower pressure
// The enthalpy of steam at 1 std. atm:
HGsat = 2676;// [kN m/kg]
lambda = 2257;// [kN m/kg]
// From Eqn. 9.140:
deff('[y] = f63(GNpPlus1_bar)','y = G_bar-(GNpPlus1_bar*(1+((HGNpPlus1-HGsat)*Mb/(lambda*Mb))))');
GNpPlus1_bar = fsolve(7,f63);
// From Eqn. 9.141:
LNp_bar = L_bar-(G_bar-GNpPlus1_bar);

// Tray Efficiencies:
// Consider the situation:
x = 0.5;
y_star = 0.962;
Temp = 79.8;// [OC]
// This is in the enriching section.
Density_L = 791;// [kg/cubic meter]
Density_G = 1.253;// [kg/cubic meter]
// From equilibrium data:
m = 0.42;
A = L/(m*G);
// From chapter 2:
ScG = 0.930;
Dl = 2.065*10^(-9);// [square m/s]
// For L = 38.73 kmol/h
q = 4.36*10^(-4);// [cubic meter/s]
// For G = 51.64 kmol/h
Va = 1.046;// [m/s]
// From tray dimensions:
z = 0.647;// [m]
Z = 0.542;// [m]
hW = 0.06;// [m]
// From Eqn. 6.61:
NtG = (0.776+(4.57*hW)-(0.238*Va*Density_G^0.5)+(104.6*q/Z))/(ScG^0.5);
// From Eqn. 6.38
hL = 6.10*10^(-3)+(0.725*hW)-(0.238*hW*Va*(Density_G)^0.5)+(1.225*q/z);// [m]
// From Eqn. 6.64:
thetha_L = hL*z*Z/q;// [s]
// From Eqn. 6.62:
NtL = 40000*(Dl^0.5)*((0.213*Va*Density_G^0.5)+0.15)*thetha_L;
// From Eqn. 6.52:
NtoG = 1/((1/NtG)+(1/(A*NtL)));
// From Eqn. 6.51:
EoG = 1-exp(-NtoG);
// From Eqn. 6.63:
DE = ((3.93*10^(-3))+(0.0171*Va)+(3.67*q/Z)+(0.1800*hW))^2;
// From Eqn. 6.59:
Pe = Z^2/(DE*thetha_L);
// From Eqn. 6.58:
eta = (Pe/2)*((1+(4*m*G1*EoG/(L1*Pe)))^0.5-1);
// From Eqn. 6.57:
EMG = EoG*(((1-exp(-(eta+Pe)))/((eta+Pe)*(1+(eta+Pe)/eta)))+((exp(eta)-1)/(eta*(1+(eta/(eta+Pe))))));
// Entrainment is neglible:
// Similarly for other x
// Value = [x Entrainment]
Value = [0 0.48;0.1 .543;0.3 0.74;0.5 EMG;0.7 0.72];

// Tray Calculation:
op_intercept = xD/(R+1);
// From Fig. 9.48:
// The exhausting section operating line, on this scale plot, for all practical purposes passes through the origin.
// The broken curve is located so that, at each concentration, vertical distances corresponding to lines BC and AC are in the ratio of EMG.
// This curve is used instead of equilibrium trays to locate the ideal trays.
// The feed tray is thirteenth.
x14 = 0.0150;
alpha = 8.95;
EMG = 0.48;
A_bar = L_bar/(alpha*G_bar);
// From Eqn. 8.16:
Eo = log(1+(EMG*((1/A_bar)-1)))/log(1/A_bar);
// The 6 real trays corresponds to: 
NRp = 6*Eo;
xW = 0.015/((exp(NRp*log(1/A_bar))-A_bar)/(1-A_bar));// [mole fraction ethanol]
// This corresponds to ethanol loss of 0.5 kg/day.
printf("The Reflux ratio of %d will cause the ethanol loss of 0.5 kg/day\n",R);
printf("Larger reflux ratios would reduce this, but the cost of additional steam will probaby make them not worthwile.\n");
printf("Smaller values of R, with corresponding reduced steam cost and larger ethanol loss, should be considered, but care must be taken to ensure vapour velocities above the weeping velocities.");