clear;
clc;

// Illustration 12.2
// Page: 665

printf('Illustration 12.2 - Page: 665\n\n');

// Solution

// ***Data***//
Y1 = 0.05;// [kg water/kg dry air]
Yair = 0.01;// [kg water/kg dry air]
TempG1 = 95;// [OC]
width = 1;// [m]
apart = 100/1000;// [m]
deep = 38/1000;// [m]
Rate_evaporation=7.5*10^(-3);// [kg/s]
//*****************//

// From Table 7.1: (Pg 234)
vH = (0.00283+(0.00456*Y1))*(TempG1+273);// [cubic m/kg dry air]
freeArea = width*(apart-deep)*11;// [square m]
// Rate of air flow at 1:
Rate_air1 = 3*freeArea/vH;// [square m]
Y2 = Y1+(Rate_evaporation/Rate_air1);// [kg water/kg dry air]
// Assuming adiabatic drying:
// From adiabatic saturation curve, Fig 7.5: (Pg 232)
TempG2 = 86;// [OC]
// Overall Water Balance:
G = Rate_evaporation/(Y1-Yair);// [kg dry air/s]
// Rate of air flow at 3:
Rate_air3 = Rate_air1+G;// [kg dry air/s]
// Rate of air flow at 4:
Rate_air4 = Rate_air3;// [kg dry air/s]
// Volumetric Rate through fan:
Rate_fan = Rate_air3/vH;// [cubic m/s]
printf("Percentage of air recycled is: %f %%\n",(Rate_air1/Rate_air3)*100);
printf("\n");

// From Fig. 7.5 (page 232):
// Saturated enthalpy at adiabatic saturation temp.
Enthalpy1 = 233;// [kJ/kg dry air]
Enthalpy2 = 233;// [kJ/kg dry air]
// Enthalpy of fresh air:
Enthalpy_air = 50;// [kJ/kg dry air]
// Assuming complete mixing, by Enthalpy mixing:
Enthalpy3 = ((Enthalpy1*Rate_air1)+(Enthalpy_air*G))/Rate_air3;// [kJ/kg dry air]
Enthalpy4 = Enthalpy3;// [kJ/kg dry air]
// From table 7.1: (Pg 234)
Temp_dry = ((Enthalpy3*1000)-(2502300*Y1))/(1005+(1884*Y1));
Power = (Enthalpy2-Enthalpy3)*Rate_air3;// [kW]
// From Fig. 7.5, (Pg 232)
DewPoint1 = 40.4;// [OC]
DewPoint2 = 41.8;// [OC]
DewPoint3 = 40.4;// [OC]
DewPoint4 = 40.4;// [OC]
printf("At Point 1\n")
printf("Enthalpy of air: %f kJ/kg dry air\n",Enthalpy1);
printf("Dew Point of air: %f OC\n",DewPoint1);
printf("\n");
printf("At Point 2\n")
printf("Enthalpy of air: %f kJ/kg dry air\n",Enthalpy2);
printf("Dew Point of air: %f OC\n",DewPoint2);
printf("\n");
printf("At Point 3\n")
printf("Enthalpy of air: %f kJ/kg dry air\n",Enthalpy3);
printf("Dew Point of air: %f OC\n",DewPoint3);
printf("\n");
printf("At Point 4\n")
printf("Enthalpy of air: %f kJ/kg dry air\n",Enthalpy4);
printf("Dew Point of air: %f OC\n",DewPoint4);
printf("\n");
printf("Dry bulb temparature of air: %f OC\n",Temp_dry);
printf("Power delivered by heater: %f kW\n",Power);