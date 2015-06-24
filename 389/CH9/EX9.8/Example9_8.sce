clear;
clc;

// Illustration 9.8
// Page: 388

printf('Illustration 9.8 - Page: 388\n\n');

// solution

//****Data*****//
// a:methanol b:water
Xa = 0.5;// [Wt fraction]
Temp1 = 26.7;// [OC]
Temp2 = 37.8;// [OC]
F1 = 5000;// [kg/hr]
//******//

//(a)
Ma = 32.04;// [kg/kmol]
Mb = 18.02;// [kg/kmol]
Xa = 0.5;// [Wt fraction]
Xb = 1-Xa;// [Wt fraction]
Temp1 = 26.7;// [OC]
Temp2 = 37.8;// [OC]
F1 = 5000;// [kg/hr];
// Basis: 1hr
F = (F1*Xa/Ma)+(F1*Xb/Mb);// [kmol/hr]
// For feed:
zF = (F1*Xa/Ma)/F;// [mole fracton methanol]
MavF = F1/F;// [kg/kmol]
// For distillate:
xD = (95/Ma)/((95/Ma)+(5/Mb));// [mole fraction methanol]
MavD = 100/((95/Ma)+(5/Mb));// [kg/kmol]
// For residue:
xW = (1/Ma)/((1/Ma)+(99/Mb));// [mole fraction methanol]
MavR = 100/((1/Ma)+(99/Mb));// [kg/kmol]
// (1): D+W = F [Eqn.9.75]
// (2): D*xD+W*xW = F*zF [Eqn. 9.76]
// Solvving simultaneously:
a = [1 1;xD xW];
b = [F;F*zF];
soln = a\b;
D = soln(1);// [kmol/h]
W = soln(2);// [kmol/h]
printf("Quantity of Distillate is %f kg/hr\n",D*MavD);
printf("Quantity of Residue is %f kg/hr\n",W*MavR);
printf("\n");

// (b)
// For the vapour-liquid equilibria:
Tempo = 19.69;// [Base Temp. according to "International Critical Tables"]
BtR = 99;// [Bubble point of the residue, OC]
hR = 4179;// [J/kg K]
hF = 3852;// [J/kg K]
deff('[y] = f52(tF)','y = (F1*hF*(tF-Temp1))-((W*MavR)*hR*(BtR-Temp2))');
tF = fsolve(Temp1,f52);// [OC]
BtF = 76;// [Bubble point of feed, OC]
// For the feed:
delta_Hs = -902.5;// [kJ/kmol]
Hf = ((hF/1000)*MavF*(tF-Tempo))+delta_Hs;// [kJ/kmol]
// From Fig 9.27:
HD = 6000;// [kJ/kmol]
HLo = 3640;// [kJ/kmol]
HW = 6000;// [kJ/kmol]
printf("The enthalpy of feed is %f kJ/kmol\n",Hf);
printf("The enthalpy of the residue is %f kJ/kmol\n",HW);
printf("\n");

// (c)
// From Fig.9.27:
// The miium reflux ratio is established by the tie line (x = 0.37 y = 0.71), which extended pass through F,the feed.
// At Dm:
Qm = 62570;// [kJ/kmol]
Hg1 = 38610;// [kJ/kmol]
// From Eqn. 9.65:
Rm = (Qm-Hg1)/(Hg1-HLo);
printf("The minimum reflux ratio is %f\n",Rm);
printf("\n");

// (d)
// From Fig. 9.28:
Np = 4.9;
// But it include the reboiler.
Nm = Np-1;
printf("The minimum number of theoretical trys required is %f \n",Nm);
printf("\n");

// (e)
R = 1.5*Rm;
// Eqn. 9.65:
deff('[y] = f53(Q_prime)','y = R-((Q_prime-Hg1)/(Hg1-HLo))');
Q_prime = fsolve(2,f53);// [kJ/kmol]
deff('[y] = f54(Qc)','y = Q_prime-(HD+(Qc/D))');
Qc = fsolve(2,f54);// [kJ/hr]
Qc = Qc/3600;// [kW]
printf("The Condensor heat load is %f kW\n",Qc);
// From Eqn. 9.77:
deff('[y] = f55(Q_dprime)','y = (F*Hf)-((D*Q_prime)+(W*Q_dprime))');
Q_dprime = fsolve(2,f55);
deff('[y] = f56(Qb)','y = Q_dprime-(HW-(Qb/W))');
Qb = fsolve(2,f56);// [kJ/hr]
Qb = Qb/3600;// [kW]
printf("The Reboiler heat load is %f kW\n",Qb);
printf("\n");

// (f)
// From Fig: 9.28
Np = 9;
// But it is including the reboiler
printf("No. of theoretical trays in tower is %d\n",Np-1);
G1 = D*(R+1);// [kmol/hr]
Lo = D*R;// [kmol/hr]
// From Fig. 9.28:
// At the feed tray:
x4 = 0.415;
y5 = 0.676;
x5 = 0.318;
y6 = 0.554;
// From Eqn. 9.64:
deff('[y] = f57(L4)','y = (L4/D)-((xD-y5)/(y5-x4))');
L4 = fsolve(2,f57);// [kmol/hr]
// From Eqn. 9.62:
deff('[y] = f58(G5)','y = (L4/G5)-((xD-y5)/(xD-x4))');
G5 = fsolve(2,f58);// [kmol/hr]
// From Eqn. 9.74:
deff('[y] = f59(L5_bar)','y = (L5_bar/W)-((y6-xW)/(y6-x5))');
L5_bar = fsolve(2,f59);// [kmol/hr]
// From Eqn. 9.72:
deff('[y] = f60(G6_bar)','y = (L5_bar/G6_bar)-((y6-xW)/(x5-xW))');
G6_bar = fsolve(2,f60);// [kmol/hr]
// At the bottom:
// Material Balance:
// Eqn. 9.66:
// (1): L8_bar-GW_bar = W;
// From Fig. 9.28:
yW = 0.035;
x8 = 0.02;
// From Eqn. 9.72:
L8ByGW_bar = (yW-xW)/(x8-xW);
// (2): L8_bar-(L8ByGW_bar*Gw_bar) = 0
a = [1 -1;1 -L8ByGW_bar];
b = [W;0];
soln = a\b;
L8_bar = soln(1);// [kmol/h]
GW_bar = soln(2);// [kmol/h]
printf("The Liquid quantity inside the tower is %f kmol/hr\n",L8_bar);
printf("The vapour quantity inside the tower is %f kmol/hr\n",GW_bar);
printf("\n");