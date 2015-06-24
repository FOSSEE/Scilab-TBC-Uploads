clear;
clc;

// Illustration 12.8
// Page: 705

printf('Illustration 12.8 - Page: 705\n\n');

// Solution 

//***Data***//
x1 = 8;// [percent moisture]
x2 = 0.5;// [percent moisture]
Rate_prod = 0.63;// [kg/s]
// Drying Gas:
xCO2 = 0.025;// [mole fraction]
xO2 = 0.147;// [mole fraction]
xN2 = 0.760;// [mole fraction]
xH2O = 0.068;// [mole fraction]
TempG2 = 480;// [OC]
Cs = 0.837;// [kJ/kg.K]
Temp1 = 27;// [OC]
Temp2 = 150;// [OC]
dp = 200*10^(-6);// [m]
Density_S = 1300;// [kg/cubic m]
//***********//

X1 = x1/(100-x1);// [kg water/kg dry solid]
X2 = x2/(100-x2);// [kg water/kg dry solid]
Ss = Rate_prod*(1-X2);// [kg dry solid/s]
Water_evap = Ss*(X1-X2);// [kg/s]
// Basis: 1 kmol of dry gas:
xDry = 1-xH2O;// [kmol]
XCO2 = 44*xCO2;// [kg]
XO2 = 32*xO2;// [kg]
XN2 = 28*xN2;// [kg]
Xdry = XCO2+XO2+XN2;// [kg]
cCO2 = 45.6;// [kJ/kmol.K]
cO2 = 29.9;// [kJ/kmol.K]
cN2 = 29.9;// [kJ/kmol.K]
cH2O = 4.187;// [kJ/kg.K]
Mav = Xdry/xDry;// [kg/kmol]
Y2 = xH2O*18.02/(xDry*Mav);// [kg water/kg dry gas]
cav = ((xCO2*cCO2)+(xO2*cO2)+(xN2*cN2))/(xDry*Mav);// [kJ/kmol.K]
// Assume:
TempG1 = 120;// [OC]
cDry = 1.005;// [kJ/kmol.K]
Tempo = 0;// [Base Temp,OC]
// By Eqn. 7.13:
HG2 = (cav+(1.97*Y2))*(TempG2-Tempo)+(2502.3*Y2);// [kJ/kg dry air]
// For the outlet air:
// HG1 = (1.005+(1.884*Y1))*(TempG1-Tempo)+(2502.3*Y1); [kJ/kg dry air]
// HG1 = (1.005*TempG1)+((1.884+TempG1)+2502.3)*Y1; [kJ/kg dry air]
// By Eqn. 11.45:
HS1 = (Cs*(Temp1-Tempo))+(cH2O*X1*(Temp1-Tempo));// [kJ/kg dry air]
HS2 = (Cs*(Temp2-Tempo))+(cH2O*X2*(Temp2-Tempo));// [kJ/kg dry air]
// Q = 0.15*HG2*Gs; [kJ/s]
// Moisture Balance, Eqn. 12.39:
// Ss*(X1-X2) = Gs(Y1-Y2)
// (Gs*Y1)-(Gs*Y2) = (Ss*(X1-X2)) ........(1)
// Enthalapy Balance, Eqn. 12.40:
// (Ss*HS1)+(Gs*HG2) = (Ss*HG2)+(Gs*HG1)+Q 
// Gs*(HG2-HG1) = (Ss*HS2)+(0.15*HG2*Gs)-(Ss*HS1)
// Gs*(HG2-(0.15*HG2)-((1.005*TempG1)+((1.884+TempG1)+2502.3)*Y1)) = (Ss*HS2)+Q-(Ss*HS1)
// Gs*(HG2-(0.15*HG2)-(1.005*TempG1))-(Gs*Y1*((1.884+TempG1)+2502.3)) = (Ss*HS2)+Q-(Ss*HS1)........ (2)
a = [(HG2-(0.15*HG2)-(1.005*TempG1)),-((1.884+TempG1)+2502.3);(-Y2) 1];
b = [(Ss*HS2)-(Ss*HS1);(Ss*(X1-X2))];
soln = inv(a)*b;
Gs = soln(1);// [kg dry air/s]
Y1 = soln(2)/soln(1);// [kg water/kg dry gas]
HG1 = (1.005+(1.884*Y1))*(TempG1-Tempo)+(2502.3*Y1);// [kJ/kg dry air]
Q = 0.15*HG2*Gs;// [kJ/s]
// Assuming the sychrometric ratio of the gas as same as that of air:
// For Zone II:
Tempw = 65;// [OC]
Temp_A = 68;// [OC]
// At point A, Fig. 12.28 (Pg 702)
Enthalpy_A = Cs*(Temp_A-Tempo)+(X1*cH2O*(Temp_A-Tempo));// [kJ/kg dry air]
// At point B, Fig. 12.28 (Pg 702)
Temp_B = Temp_A;// [OC]
Enthalpy_B = Cs*(Temp_B-Tempo)+(X2*cH2O*(Temp_B-Tempo));// [kJ/kg dry air]

// Assuming that the heat losses in the three zones are propotional to the number of transfer units in each zone and to the average temp. difference between the gas and the surrounding air.
// Fractional heat loss in each Zone:
fr1 = 0.14;
fr2 = 0.65;
fr3 = 0.20;
// Calculations for zone III:
Cs3 = cav+(1.97*Y2);// [kJ/(kg dry gas).K]
// Heat balance:
deff('[y]=f1(TempGD)','y=(Gs*Cs3*(TempG2-TempGD))-(Ss*(HS2-Enthalpy_B)+(fr3*Q))');
TempGD = fsolve(7,f1);// [OC]
delta_TempG = Ss*(HS2-Enthalpy_B)/(Gs*Cs3);// [OC]
delta_TempM = ((TempG2-Temp2)+(TempGD-Temp_A))/2;// [OC]
NtoG3 = delta_TempG/delta_TempM;

// Calculations for zone I:
Cs1 = 1.005+(1.884*Y1);// [kJ/(kg dry gas).K]
// Heat balance:
deff('[y]=f2(TempGC)','y=(Gs*Cs1*(TempGC-TempG1))-(Ss*(Enthalpy_A-HS1)+(fr1*Q))');
TempGC = fsolve(7,f2);// [OC]
delta_TempG = Ss*(Enthalpy_A-HS1)/(Gs*Cs1);// [OC]
delta_TempM = ((TempGC-Temp_A)+(TempG1-Temp1))/2;// [OC]
NtoG1 = delta_TempG/delta_TempM;

// Calculations for zone II:
Cs2 = (cav+Cs1)/2;// [kJ/(kg dry gas).K]
// Heat balance:
True_deltaTemp = TempGD-TempGC;// [OC]
delta_Temp = fr2*Q/(Cs1*Gs);// [Change in temp resulting from heat loss,OC]
delta_TempG = True_deltaTemp-delta_Temp;// [OC]
delta_TempM = ((TempGD-Temp_A)-(TempGC-Temp_A))/log((TempGD-Temp_A)/(TempGC-Temp_A));// [OC]
NtoG2 = delta_TempG/delta_TempM;

NtoG = NtoG1+NtoG2+NtoG3;

// Standard diameters are availaible at 1, 1.2 & 1.4 m.
Td = 1.2;// [m]
Area = %pi*Td^2/4;// [square m]
Gs = Gs/Area;// [kg/square m.s]
Ss = Ss/Area;// [kg/square m.s]
Gav = Gs*(1+(Y1+Y2)/2);// [kg/square m.s]
// From Eqn. 12.47:
Ua = 237*Gav^0.417/Td;// [W/square m.K]
HtoG = Gs*Cs2*1000/Ua;// [m]
Z = NtoG*HtoG;// [m]
// Assume:
v = 0.35;// [m/s]
N = v/(%pi*Td);// [1/s]
// From Eqn. 12.37:
K = 0.6085/(Density_S*dp^(1/2));
// Take:
phi_D = 0.05;
// From Eqn. 12.35:
phi_DO = phi_D-(K*Gav);
// From Eqn. 12.35:
s = 0.3344*Ss/(phi_DO*Density_S*N^0.9*Td);// [m/s]
printf("Height of the drier: %f m\n",Z);
printf("Drier Slope: %f m/m \n",s);