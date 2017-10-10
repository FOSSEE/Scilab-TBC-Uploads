// Example 4_17
clc;funcprot(0);
// Given data
m_s=100;// kg/s
T_s1=450;// The inlet temperature of sodium in °C
T_s2=350;// The exit temperature of sodium in °C
c_p=1.25;// The specific heat of sodium in kJ/kg°C

// Calculation
// Using the given values, we have (use Table C-4 to find h_w1)
h_w1=88.7;// kJ/kg
h_w2=2792.8;// kJ/kg
m_w=(m_s*c_p*(T_s1-T_s2))/(h_w2-h_w1);// The minimum mass flux of the water in kg/s
Q=m_w*(h_w2-h_w1);// The rate of heat transfer in kW
printf("\nThe minimum mass flux of the water,m_w=%1.3f kg/s \nThe rate of heat transfer,Q=%5.0f kW or %2.1f MW",m_w,Q,Q/10^3);
