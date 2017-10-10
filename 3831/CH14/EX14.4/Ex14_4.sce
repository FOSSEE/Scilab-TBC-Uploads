// Example 14_4
clc;funcprot(0);
// Given data
// Station 1
x_1=1.00;// The dryness fraction
T_1=-15.0;// °C
h_1=244.13;// kJ/kg
s_1=0.95052;// kJ/kg.K
// Station 2
p_2s=909.9;// kPa
s_2s=0.95052;// kJ/kg.K
s_2s=s_1;// kJ/kg.K
h_2s=271.92;// kJ/kg
T_2s=39.3;// °C
// Station 3
T_3=20.0;// °C
x_3=0.00;// The dryness fraction
h_3=68.67;// kJ/kg
s_3=0.25899;// kJ/kg.K
// Station 4h
T_4h=T_1;// °C
h_4h=h_3;// kJ/kg
x_4h=0.1910;// The quality of steam
s_4h=0.27088;// kJ/kg.K
n_c=75.0/100;// The isentropic efficiency of compressor

// Calculation
Q=h_1-h_4h;// kJ/kg
W_c=(h_2s-h_1)/n_c;// kJ/kg
COP_vc=Q/W_c;// The coefficient of performance of vapor compression cycle
printf("\nCOP_vapor compression cycle R/AC=%1.2f",COP_vc);
