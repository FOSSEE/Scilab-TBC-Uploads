// Example 14_3
clc;funcprot(0);
// Given data
T_H=20.0+273.15;// K
T_L=-15.0+273.15;// K

// Solution
// (a)
COP_Cr=T_L/(T_H-T_L);// COP of a reversed Carnot cycle
// From Table C.9b in Thermodynamic Tables to accompany Modern Engineering Thermodynamics, the thermodynamic data at the monitoring stations shown in the schematic are
// Station 1
T_1=-15.0;// °C
s_1=0.89973;// kJ/(kg.K)
s_2s=s_1;// kJ/(kg.K)
x_1=0.9395;// The quality of steam
h_1=231.0;// kJ/kg
s_f1=0.11075;// kJ/(kg.K)
s_fg1=0.83977;// kJ/(kg.K)
h_f1=27.33;// kJ/kg
h_fg1=216.79;// kJ/kg
// Station 2
T_2s=20.0;// °C
x_2s=1.00;// The quality of steam
h_2s=256.5;// kJ/kg
s_2s=0.89973;// kJ/(kg.K)
p_2s=909.9;// kPa
// Station 3
T_3=20.0;// °C
x_3=0.00;// The quality of steam
h_3=68.67;// kJ/kg
s_3=0.25899;// kJ/(kg.K)
p_3=p_2s;// kPa
// Station 4
T_4s=T_1;// °C
s_4s=s_3;// kJ/(kg.K)
x_4s=0.1765;// The quality of steam
h_4s=65.6;// kJ/kg
s_f4=0.11075;// kJ/(kg.K)
s_fg4=0.83977;// kJ/(kg.K)
h_f4=h_f1;// kJ/kg
h_fg4=h_fg1;// kJ/kg
x_1=(s_2s-s_f1)/s_fg1;
h_1=h_f1+(x_1*h_fg1);// kJ/kg
// where we have calculated
x_4s=(s_3-s_f4)/s_fg4;// The quality of steam
h_4s=h_f4+(x_4s*h_fg4);// kJ/kg
Q_L=h_1-h_4s;// kJ/kg
W_c=h_2s-h_1;// kJ/kg
W_t=h_3-h_4s;// kJ/kg
COP_et=Q_L/(W_c-W_t);// COP  for isentropic vapour compressor cycle with expansion turbine
// (c)
// Station 4h
T_4h=T_1;// °C
h_4h=h_3;// kJ/kg
x_4h=(h_4h-h_f4)/h_fg4;// The quality of steam
s_4h=s_f4+(x_4h*s_fg4);// kJ/(kg.K)
Q_L=h_1-h_4h;// kJ/kg
W_c=h_2s-h_1;// kJ/kg
COP_tv=Q_L/W_c;// COP for isentropic vapor-compression cycle with throttling valve
printf("\n(a)COP_carnot refrigerator=%1.2f \n(b)COP_isentropic vapour compressor cycle with expansion turbine=%1.2f \n(c)COP_isentropic vapor-compression cycle with throttling valve=%1.2f",COP_Cr,COP_et,COP_tv);
