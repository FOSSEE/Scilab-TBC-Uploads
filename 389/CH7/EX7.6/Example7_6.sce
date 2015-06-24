clear;
clc;

// Illustration 7.6
// Page: 234

printf('Illustration 7.6 - Page: 234\n\n');

// solution

//****Data****//
// A = water vapour; B = air
TempG = 55;// [OC]
P = 1.0133*10^(5);// [N/square m]
Y_prime = 0.030;// [kg water/kg dry air]
//******//

MA = 18.02;// [kg/kmol]
MB = 28.97;// [kg/kmol]

// Percent Humidity
// From psychrometric chart, at 55 OC
Ys_prime = 0.115;// [kg water/kg dry air]
percent_Humidity = (Y_prime/Ys_prime)*100;
printf("The sample has percent Humidity =  %f %%\n",percent_Humidity);

// Molal Absolute Humidity
Y = Y_prime*(MB/MA);// [kmol water/kmol dry air]
printf("Molal Absolute Humidity of the sample is %f kmol water/kmol dry air\n",Y);

// Partial Pressure
pA = Y*P/(1+Y);// [N/square m]
printf("The Partial Pressure Of Water is %f N/square m\n",pA);

// Relative Humidity
pa = 118*133.3;// [vapour pressure of water at 55 OC,N/square m]
relative_Humidity = (pA/pa)*100;
printf("The sample has relative Humidity =  %f %%\n",relative_Humidity);

// Dew Point
// From psychrometric chart,
dew_point = 31.5;// [OC]
printf("Dew point Of the Sample is %f Oc\n",dew_point);

// Humid Volume
// At 55 OC
vB = 0.93;// [specific volume of dry air,cubic m/kg]
vsB = 1.10;// [specific volume of saturated air,cubic m/kg]
vH = vB+((vsB-vB)*(percent_Humidity/100));// [cubic m/kg]
printf("The Humid Volume of the Sample is %f cubic m/kg\n",vH);

// Humid Heat
CB = 1005;// [J/kg.K]
CA = 1884;// [J/kg.K]
Cs = CB+(Y_prime*CA);// [J/kg]
printf("The Humid Heat is %f J/kg dry air.K\n",Cs);

// Enthalpy
HA = 56000;// [J/kg dry air]
HsA = 352000;// [J/kg dry air]
H_prime = HA+((HsA-HA)*(percent_Humidity/100));// [J/kg dry air]
printf("The Enthalphy of the sample is %f J/kg dry air\n",H_prime);