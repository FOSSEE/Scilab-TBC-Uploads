clear;
clc;

//Example - 8.5
//Page number - 292
printf("Example - 8.5 and Page number - 292\n\n");

//Given
T_high = 40 + 273.15;//[K] - High temperature
T_low = -20 + 273.15;//[K] - Low temperature
C = 10;//[tons of refrigeration] - Capacity
//1 ton refrigeration = 3.517 kW, therefore
H = C*3.517;//[kW] - Heat absorbed

//For reversed carnot cycle, COP = T_low/(T_high - T_low)
COP = T_low/(T_high - T_low);

// COP = (Refrigerating effect)/(Work input), therefore power required is given by
P = (H/COP);//[kW]

printf("The COP is %f\n\n",COP);
printf("The power required is %f kW",P);
