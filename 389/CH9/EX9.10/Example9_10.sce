clear;
clc;

// Illustration 9.10
// Page: 412

printf('Illustration 9.10 - Page: 412\n\n');

// solution

// a:methanol b:water
Ma = 32.04;// [kg/kmol]
Mb = 18.02;// [kg/kmol]
// Feed:
F1 = 5000;// [kg/h]
F = 216.8;// [kmol/h]
Tempo = 19.7;// [OC]
zF = 0.360;// [mole fraction methanol]
MavF = 23.1;// [kg/kmol]
Tempf = 58.3;// [OC]
// Distillate:
D1 = 2620;// [kg/h]
D = 84.4;// [kkmol/h]
xD = 0.915;// [mole fraction methanol]
// Residue:
R1 = 2380;// [kg/h]
R = 132.4;// [kmol/h]
xW = 0.00565;// [mole fraction methanol]

// From Fig. 9.42 (Pg 413):
BtF = 76.0;// [Bubble point if the feed, OC]
DtF = 89.7;// [Dew point of the feed, OC]
// Latent heat of vaporisation at 76 OC
lambda_a = 1046.7;// [kJ/kg]
lambda_b = 2284;// [kJ/kg]
ha = 2.721;// [kJ/kg K]
hb = 4.187;// [kJ/kg K]
hF = 3.852;// [kJ/kg K]
// If heats of solution is ignaored:
// Enthalpy of the feed at the bubble point referred to the feed temp.
HF = hF*MavF*(BtF-Tempf);// [kJ/kmol]
// enthalpy of the saturated vapour at dew point referred to the liquid at feed temp.
HL = (zF*((ha*Ma*(DtF-Tempf))+(lambda_a*Ma)))+((1-zF)*((hb*Mb*(DtF-Tempf))+(lambda_b*Mb)));// [kJ/kmol]
q = HL/(HL-HF);
slope = q/(q-1);
// In fig. 9.42: xD,xW & zF are  located on the 45 degree diagonal & the q line is drawn with slope = 'slope' .
// The operating line for minimum reflux ratio in this case pass through the intersection of the q line and the equilibrium curve.
ordinate = 0.57;
deff('[y] = f62(Rm)','y = ordinate-(xD/(Rm+1))');
Rm = fsolve(0,f62);// [mole reflux/mole distillate]
// from fig. 9.42 (Pg 413):
// The minimum number of theoretical trays is determied using the 45 degree diagonal as operating line.
Np = 4.9;// [including the reboiler]
R = 1.5*Rm;// [mole reflux/mole distillate]
// From Eqn. 9.49:
L = R*D;// [kmol/h]
// From Eqn. 9.115:
G = D*(R+1);// [kmol/h]
// From Eqn. 9.126:
L_bar = (q*F)+L;// [kmol/h]
// From Eqn. 9.127:
G_bar = (F*(q-1))+G;// [kmol/h]
ordinateN = xD/(R+1);
// As in Fig. 9.43:
// The y-intercept = ordinateN and enriching and exhausting operating lines are plotted.
// Number of theoretical stages are determined.
NpN = 8.8;// [including the reboiler]
printf("Number of theoretical stages is %f\n",NpN-1);