clear;
clc;

//Example - 8.3
//Page number - 291
printf("Example - 8.3 and Page number - 291\n\n");

//Given
W = 1.1;//[kW] - Work done per ton of refrigeration 
//1 ton refrigeration = 3.517 kW, therefore
H = 3.517;//[kW] - Heat absorbed
T_low = -30 + 273.15;//[K] - Low temperature maintained

//COP can be calculated as
//COP = (Heat absorbed/Work done)
COP = H/W;

//For reversed carnot cycle, COP = T_low/(T_high - T_low). Solving this we get
T_high = (T_low/COP) + T_low;//[K] - Higher temperature

//Heat rejected is
H_rej = W + H;//[kW];

printf("The COP is %f\n\n",COP);
printf("The higher temperature of the cycle is %f K\n\n",T_high);
printf("The heat rejected per ton of refrigeration is %f kW\n\n",H_rej);
