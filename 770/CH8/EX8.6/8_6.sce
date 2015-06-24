clear;
clc;

//Example - 8.6
//Page number - 292
printf("Example - 8.6 and Page number - 292\n\n");

//Given
COP = 4;//Coefficient of performance
P = 10;//[kW] - Work done on the cycle

//For reversed carnot cycle, COP = T_low/(T_high - T_low)
//ratio = (T_high/T_low),therefore
ratio = -1/(COP + 1);

// Refrigerating effect = (COP)*Work input, therefore refrigeration is given by
H = COP*P;//[kW]

//Maximum refrigearation in tons is given by
H_max = (H/3.517);

printf("The maximum refrigeration value is %f ton",H_max);

