// Example 8_10
clc;funcprot(0);
// Given data
T_1=-20;// °C
T_3=41.64;// °C
mdot=0.6;// kg/s

// Calculation
h_1=178.6;// kJ/kg
h_4=76.3;// kJ/kg
h_3=h_4;// kJ/kg
s_1=0.7082;// kJ/kg.K
s_2=s_1;// kJ/kg.K
h_2=(((0.7082-0.7021)/(0.7254-0.7021))*(217.8-210.2))+210.2;// kJ/kg
Q_E=mdot*(h_1-h_4);// The rate of refrigeration in kW
W_C=mdot*(h_2-h_1);// The power needed to operate the compressor in kW
COP=Q_E/W_C;// The coefficient of performance
printf("\nThe rate of refrigeration,Q_E=%2.1f kW \nThe coefficient of performance,COP=%1.2f",Q_E,COP);
Hp=(W_C/0.746)/(Q_E/3.52);// The rating in Hp/ton
COP=(h_2-h_3)/(h_2-h_1);// The coefficient of performance
printf("\nThe rating in Hp/ton=%1.2f \nThe coefficient of performance if the cycle is operated as a heat pump,COP=%1.2f",Hp,COP);
