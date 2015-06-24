clear;
clc;
printf("\t\t\tExample Number 11.3\n\n\n");
// Wet-bulb temperature
// Example 11.3(page no.-590-591)
// solution

Pg = 2107;// [Pa] from steam table at 18.3 degree celcius
Pw = Pg*18;// [Pa]
Rw = 8315;// [J/mol K] gas constant
Tw = 273.15+18.3;// [K]
RHOw = Pw/(Rw*Tw);// [kg/cubic meter]
Cw = RHOw;// [kg/cubic meter]
RHOinf = 0;// since the free stream is dry air
Cinf = 0;
P = 1.01325*10^(5);// [Pa]
R = 287;// [J /kg  K]
T = Tw;// [K]
RHO = P/(R*T);// [kg/cubic meter]
Cp = 1004;// [J/kg degree celsius]
Le = 0.845;
Hfg = 2.456*10^(6);// [J/kg]
// now using equation(11-31)
Tinf = (((Cw-Cinf)*Hfg)/(RHO*Cp*(Le^(2/3))))+Tw;// [K]
Tin = Tinf-273.15;// [degree celsius]
printf("temperature of dry air is %f degree celsius",Tin);
printf("\n\n these calculations are now recalculated the density at the arithmetic-average temperature between wall and free-stream conditions");
printf("\n\n with this adjustments these results are RHO = 1.143 kg/m^(3) and Tinf = 55.8 degree celcius");

