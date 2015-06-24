clear;
clc;

// Illustration 12.7
// Page: 700

printf('Illustration 12.7 - Page: 700\n\n');

// Solution 

//***Data***//
x1 = 3.5;// [percent moisture]
x2 = 0.2;// [percent moisture]
dia = 1.2;// [m]
l = 6.7;// [m]
Rate_prod = 900;// [kg/h]
y2 = 0.5;// [Humidity]
TempG2 = 90;// [OC]
TempG1 = 32;// [OC]
TempS1 = 25;// [OC]
TempS2 = 60;// [OC]
//***********//

X1 = x1/(100-x1);// [kg H2O/kg dry solid]
X2 = x2/(100-x2);// [kg H2O/kg dry solid]
Ss = Rate_prod*(1-X2);// [kg dry solid/h]
Rate_drying = Ss*(X1-X2);// [kg water evaporated/h]
Y2 = (y2/(1-y2))/100;// [kg water/kg dry air]
Tempo = 0;// [Base temp,OC]
// From Table 7.1: (Pg 234)
// Enthalpy of air entering the drier:
HG2 = (1005+(1884*Y2))*(TempG2-Tempo)+(2502300*Y2);// [J/kg dry air]
// For the outlet air:
// HG1 = (1005+(1884*Y1))*(TempG1-Tempo)+(2502300*Y1); [J/kg dry air]
// HG1 = (1005*TempG1)+((1884+TempG1)+2502300)*Y1; [J/kg dry air]
CsNH4 = 1507;// [J/kg.K]
CsH2O = 4187;// [J/kg.K]
// From Eqn. 11.45:
HS2 = CsNH4*(TempS2-Tempo)+(X2*CsH2O*(TempS2-Tempo));// [J/kg dry air]
HS1 = CsNH4*(TempS1-Tempo)+(X1*CsH2O*(TempS1-Tempo));// [J/kg dry air]
// The estimated combined natural convection and radiation heat transfer coeffecient from the drier to the surrounding:
h = 12;// [W/square m.K]
deltaTemp = ((TempG2-TempS1)+(TempG1-TempS1))/2;// [OC]
Ae = %pi*dia*l;// [square m]
Q = h*3600*Ae*deltaTemp;// [kJ/h]
// Moisture Balance, Eqn. 12.39:
// Ss*(X1-X2) = Gs(Y1-Y2)
// (Gs*Y1)-(Gs*Y2) = (Ss*(X1-X2)) ........(1)
// Enthalapy Balance, Eqn. 12.40:
// (Ss*HS1)+(Gs*HG2) = (Ss*HG2)+(Gs*HG1)+Q 
// Gs*(HG2-HG1) = (Ss*HS2)+Q-(Ss*HS1)
// Gs*(HG2-((1005*TempG1)+((1884+TempG1)+2502300)*Y1)) = (Ss*HS2)+Q-(Ss*HS1)
// Gs*(HG2-(1005*TempG1))-(Gs*Y1*((1884+TempG1)+2502300)) = (Ss*HS2)+Q-(Ss*HS1)........ (2)
// Solving Simultaneously:
a = [(HG2-(1005*TempG1)),-((1884+TempG1)+2502300);(-Y2) 1];
b = [(Ss*HS2)+Q-(Ss*HS1);(Ss*(X1-X2))];
soln = inv(a)*b;
Gs = soln(1);// [kg dry air/h]
Y1 = soln(2)/soln(1);// [kg water/kg dry air]
// From Fig. 7.5 (Pg 232)
Enthalpy_air = 56;// [kJ/kg dry air]
HeatLoad = Gs*(HG2-Enthalpy_air*1000);// [W]
printf("Air Flow Rate: %f kg/h\n",Gs);
printf("Moisture content of air: %f kg water/kg dry air \n",Y1);
printf("Heat Load of drier: %f kW",HeatLoad/1000);