clear;
clc;

// Illustration 8.5
// Page: 299

printf('Illustration 8.5 - Page: 299\n\n');

// solution

//****Data****//
// a = NH3 b = H2 c = N2 w = water
P = 2;// [bars]
Temp = 30;// [OC]
L = 6.38;// [kg/s]
W = 0.53;// [weir length,m]
pitch = 12.5/1000;// [m]
D = 0.75;// [Tower diameter,m]
hW = 0.060;// [weir height,m]
t = 0.5;// [tray spacing,m]
//*******//

// From Geometry of Tray Arrangement:
At = 0.4418;// [Tower Cross section,square m]
Ad = 0.0403;// [Downspout Cross section,square m]
An = At-Ad;// [square m]
Ao = 0.0393;// [perforation area,square m]
Z = 0.5307;// [distance between downspouts,square m]
z = (D+W)/2;// [average flow width,m]
h1 = 0.04;// [weir crest,m]
// From Eqn. 6.34
Weff = W*(sqrt(((D/W)^2)-((((D/W)^2-1)^0.5)+((2*h1/D)*(D/W)))^2));// [m]
q = Weff*(1.839*h1^(3/2));//[cubic m/s]
// This is a recommended rate because it produces the liquid depth on the tray to 10 cm.
Density_L = 996;// [kg/s]
Mw = 18.02;// [kg/kmol]
L1 = 6.38/Mw;// [kmol/s]
Ma = 17.03;// [kg/kmol]
Mb = 28.02;// [kg/kmol]
Mc = 2.02;// [kg/kmol]
MavG = (0.03*Ma)+(0.97*(1/4)*Mb)+(0.97*(3/4)*Mc);// [kg/kmol]
Density_G = (MavG/22.41)*(P/0.986)*(273/(273+Temp));// [kg/cubic m]
G = 0.893;// [kg/s]
sigma = 68*10^(-3);// [N/m]
abcissa = (L/G)*(Density_G/Density_L)^0.5;
// From Table 6.2 (Pg169):
alpha = 0.04893;
beeta = 0.0302;
// From Eqn. 6.30
Cf = ((alpha*log10(1/abcissa))+beeta)*(sigma/0.02)^0.2;
// From Eqn. 6.29
Vf = Cf*((Density_L-Density_G)/Density_G)^(1/2);// [m/s]
// 80% of flooding value:
V = 0.8*Vf;// [m/s]
G = 0.8*G;// [kg/s]
G1 = G/MavG;// [kmol/s]
Vo = V*An/Ao;// [m/s]
l = 0.002;// [m]
Do = 0.00475;// [m]
// From Eqn. 6.37
Co = 1.09*(Do/l)^0.25;
viscosity_G = 1.13*10^(-5);// [kg/m.s]
Reo = Do*Vo*Density_G/viscosity_G;
// At Reynold's No. = Reo
fr = 0.0082;
g = 9.81;// [m/s^2]
// From Eqn. 6.36
deff('[y] = f36(hD)','y = (2*hD*g*Density_L/(Vo^2*Density_G))-(Co*(0.40*(1.25-(Ao/An))+(4*l*fr/Do)+(1-(Ao/An))^2))');
hD = fsolve(1,f36);
// From Eqn. 6.31;
Aa = (Ao/0.907)*(pitch/Do)^2;// [square m]
Va = V*An/Aa;// [m/s]
// From Eqn. 6.38
hL = 6.10*10^(-3)+(0.725*hW)-(0.238*hW*Va*(Density_G)^0.5)+(1.225*q/z);// [m]
// From Eqn. 6.42
hR = 6*sigma/(Density_L*Do*g);// m
// From Eqn. 6.35
hG = hD+hL+hR;// [m]
Al = 0.025*W;// [square m]
Ada = min(Al,Ad);
// From Eqn. 6.43
h2 = (3/(2*g))*(q/Ada)^2;// [m]
// From Eqn.6.44
h3 = hG+h2;
// since hW+h1+h3 is essentially equal to t/2, flooding will not occur
abcissa = (L/G)*(Density_G/Density_L)^0.5;
V_by_Vf = V/Vf;
// From Fig.6.17, V/Vf = 0.8 & abcissa = 0.239
E = 0.009;

// At the prevailing conditions:
Dg = 2.296*10^(-5);// [square m/s]
viscosity_G = 1.122*10^(-5);// [kg/m.s]
ScG = viscosity_G/(Density_G*Dg)
Dl = 2.421*10^(-9);// [square m/s]

// From Henry's Law:
m = 0.850;
A = L1/(m*G1);

// From Eqn. 6.61:
NtG = (0.776+(4.57*hW)-(0.238*Va*Density_G^0.5)+(104.6*q/Z))/(ScG^0.5);
// From Eqn. 6.64:
thetha_L = hL*z*Z/q;// [s]
// From Eqn. 6.62:
NtL = 40000*(Dl^0.5)*((0.213*Va*Density_G^0.5)+0.15)*thetha_L;
// From Eqn. 6.52:
NtoG = 1/((1/NtG)+(1/(A*NtL)));
// From Eqn. 6.51:
EoG = 1-exp(-NtoG);
// From Eqn. 6.63:
DE = ((3.93*10^(-3))+(0.0171*Va)+(3.67*q/Z)+(0.1800*hW))^2;// [square m/s]
// From Eqn. 6.59:
Pe = Z^2/(DE*thetha_L);
// From Eqn. 6.58:
eta = (Pe/2)*((1+(4*m*G1*EoG/(L1*Pe)))^0.5-1);
// From Eqn. 6.57:
EMG = EoG*(((1-exp(-(eta+Pe)))/((eta+Pe)*(1+(eta+Pe)/eta)))+((exp(eta)-1)/(eta*(1+(eta/(eta+Pe))))));
// From Eqn. 6.60:
EMGE = EMG/((1+(EMG*(E/(1-E)))));
// From Eqn. 8.16:
EO = log(1+EMGE*((1/A)-1))/log(1/A);
Np = 14*EO;
yNpPlus1 = 0.03;
x0 = 0;
// From Eqn. 5.54(a):
deff('[y] = f37(y1)','y = ((yNpPlus1-y1)/(yNpPlus1-m*x0))-(((A^(Np+1))-A)/((A^(Np+1))-1))');
y1 = fsolve(0.03,f37);
printf("Mole Fraction Of NH3 in effluent is %e",y1);