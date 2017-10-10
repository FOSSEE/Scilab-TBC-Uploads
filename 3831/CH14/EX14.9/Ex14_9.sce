// Example 14_9
clc;funcprot(0);
// Given data
Q_R=422;// kJ/h
Q_F=422;// kJ/h
// Station 1- Compressor inlet
x_1=1.00;// The quality of steam
T_1=-18.0;// °C
h_1=236.53;// kJ/kg
s_1=0.9315;// kJ/kg.K
// Station 2- Compressor outlet
s_2=s_1;// kJ/kg.K
p_sat=0.770;// MPa
p_3=p_sat;// MPa
p_2s=p_3;// MPa
h_2s=271.0;// kJ/kg
// Station 3- Condenser outlet
x_3=0.00;// The quality of steam
T_3=30.0;// °C
p_3=0.770;// MPa
h_3=91.49;// kJ/kg
// Station 4h-Refrigerator evaporator inlet
h_4h=h_3;// kJ/kg
T_4h=4.00;// °C
h_f=55.35;// kJ/kg
h_fg=194.19;// kJ/kg
// Station 5-Refrigerator evaporator outlet
T_5=T_4h;// °C
// Station 6h-Freezer evaporator outlet
T_6h=-18.0;// °C
n_s_c=0.80;// The isentropic efficency of the compressor

// Calculation
// (a)
COP=(h_1-h_4h)/((h_2s-h_1)/n_s_c);// The coefficient of performance
// (b)
m_ref=((Q_R+Q_F)*(1/60))/(h_1-h_4h);// kg/min
// (c)
h_5=h_4h+((Q_R*1/60)/m_ref);// kJ/kg
x_5=((h_5-h_f)/h_fg)*100;// The quality at the exit of the refrigeration evaporator
printf("\n(a)The coefficient of performance,COP=%1.2f \n(b)The mass flow rate of refrigerant required,m_ref=%0.4f kg/min \n(c)The quality at the outlet of the refrigeration evaporator,x_5=%2.1f percentage",COP,m_ref,x_5);
