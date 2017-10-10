// Example 22_12
clc;funcprot(0);
//Given data
T_1=300;// °C
p_1=35;// bar
p_2=25;// bar
p_2a=1.5;// bar
p_3=0.1;// bar
n_t=80/100;// The isentropic efficiency for both sections of the turbine
gradT=10;// °C
m_w=1;// kg
C_p=4.2;// kJ/kg.°C

// Calculation
// From h-s chart:
h_1=2970;// kJ/kg
h_2=2504;// kJ/kg
h_3=2197;// kJ/kg
h_f2=264;// kJ/kg (at 1.5 bar)
h_f2a=h_f2-(m_w*C_p*gradT);// kJ/kg
h_f3=190;// kJ/kg (at 0.1 bar)
m=(h_f2a-h_f3)/(h_2-h_f3);// kg/kg of steam
W=(h_1-h_2)+((1-m)*(h_2-h_3));// kJ/kg
Q_s=h_1-h_f2a;// kJ/kg
n_th=(W/Q_s)*100;// Thermal efficiency of the plant
printf('\n(a)Bleed steam per kg of steam supplied to the steam turbine=%0.3f kg/kg of steam \n(b)The thermal efficiency of the plant=%0.1f percentage',m,n_th);
// The answer provided in the textbook is wrong
