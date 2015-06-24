clear;
clc;

// Illustration 8.4
// Page: 295

printf('Illustration 8.4 - Page: 295\n\n');

// solution

//****Data****//
// a = CH4 b = C5H12
Tempg = 27;// [OC]
Tempo = 0;// [base temp,OC]
Templ = 35;// [OC]
xa = 0.75;// [mole fraction of CH4 in gas]
xb = 0.25;// [mole fraction of C5H12 in gas]
M_Paraffin = 200;// [kg/kmol]
hb = 1.884;// [kJ/kg K]
//********//

Ha = 35.59;// [kJ/kmol K]
Hbv = 119.75;// [kJ/kmol K]
Hbl = 117.53;// [kJ/kmol K]
Lb = 27820;// [kJ/kmol]
// M = [Temp (OC) m]
M = [20 0.575;25 0.69;30 0.81;35 0.95;40 1.10;43 1.25];
// Basis: Unit time
GNpPlus1 = 1;// [kmol]
yNpPlus1 = 0.25;// [kmol]
HgNpPlus1 = ((1-yNpPlus1)*Ha*(Tempg-Tempo))+(yNpPlus1*(Hbv*(Tempg-Tempo)+Lb));// [kJ/kmol]
L0 = 2;// [kmol]
x0 = 0;// [kmol]
HL0 = ((1-x0)*hb*M_Paraffin*(Templ-Tempo))+(x0*hb*(Templ-Tempo));// [kJ/kmol]
C5H12_absorbed = 0.98*xb;// [kmol]
C5H12_remained = xb-C5H12_absorbed;
G1 = xa+C5H12_remained;// [kmol]
y1 = C5H12_remained/G1;// [kmol]
LNp = L0+C5H12_absorbed;// [kmol]
xNp = C5H12_absorbed/LNp;// [kmol]
// Assume:
Temp1 = 35.6;// [OC]
Hg1 = ((1-y1)*Ha*(Temp1-Tempo))+(y1*(Hbv*(Temp1-Tempo)+Lb));// [kJ/kmol]

// Eqn. 8.11:
Qt = 0;
deff('[y] = f30(HlNp)','y = ((L0*HL0)+(GNpPlus1*HgNpPlus1))-((LNp*HlNp)+(G1*Hg1)+Qt)');
HlNp = fsolve(2,f30);

deff('[y] = f31(TempNp)','y = HlNp-(((1-x0)*hb*M_Paraffin*(TempNp-Tempo))+(x0*hb*(TempNp-Tempo)))');
TempNp = fsolve(35.6,f31);
// At Temp = TempNp:
mNp = 1.21;
yNp = mNp*xNp;// [kmol]
GNp = G1/(1-yNp);// [kmol]
HgNp = ((1-yNp)*Ha*(TempNp-Tempo))+(yNp*(Hbv*(TempNp-Tempo)+Lb));// [kJ/kmol]
// Eqn. 8.13 with n = Np-1
deff('[y] = f32(LNpMinus1)','y = LNpMinus1+GNpPlus1-(LNp+GNp)');
LNpMinus1 = fsolve(2,f32);// [kmol]

// Eqn. 8.14 with n = Np-1
deff('[y] = f33(xNpMinus1)','y = ((LNpMinus1*xNpMinus1)+(GNpPlus1*yNpPlus1))-((LNp*xNp)+(GNp*yNp))');
xNpMinus1 = fsolve(0,f33);// [kmol]

// Eqn. 8.15 with n = Np-1
deff('[y] = f34(HlNpMinus1)','y = ((LNpMinus1*HlNpMinus1)+(GNpPlus1*HgNpPlus1))-((LNp*HlNp)+(GNp*HgNp))');
HlNpMinus1 = fsolve(0,f34);// [kJ/kmol]
deff('[y] = f35(TempNpMinus1)','y = HlNpMinus1-(((1-xNpMinus1)*hb*M_Paraffin*(TempNpMinus1-Tempo))+(xNpMinus1*hb*(TempNpMinus1-Tempo)))');
TempNpMinus1 = fsolve(42,f35);// [OC]

// Thecomputation are continued upward through the tower in this manner until the gas composition falls atleast to 0.00662.
// Results = [Tray No.(n) Tn(OC) xn yn]
Results = [4.0 42.3 0.1091 0.1320;3 39.0 0.0521 0.0568;2 36.8 0.0184 0.01875;1 35.5 0.00463 0.00450];
scf(8);
plot(Results(:,1),Results(:,4));
xgrid();
xlabel('Tray Number');
ylabel('mole fraction of C5H12 in gas');

scf(9);
plot(Results(:,1),Results(:,2));
xgrid();
xlabel('Tray Number');
ylabel('Temparature(OC)');

// For the cquired y1
Np = 3.75;
printf("The No. of trays will be %f",Np);