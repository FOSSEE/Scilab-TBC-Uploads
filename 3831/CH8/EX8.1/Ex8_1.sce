// Example 8_1
clc;funcprot(0);
// Given data
m=2.00;// kg
// State 1
T_1=50.0;// °C
x_1=0;// The quality of steam
// State 2
T_2=50.0;// °C
p_2=5.00;// kPa

// Calculation
s_1=0.7036;// kJ/(kg.K)
s_2=8.4982;// kJ/(kg.K)
u_1=209.3;// kJ/kg
u_2=2444.7;// kJ/kg
T_b=T_1;// °C
Q_12=m*(T_b+273.15)*(s_2-s_1);// kJ
W_12=(m*(u_1-u_2))+Q_12;// kJ
printf("\nThe heat and work transports of energy for this process,Q_12=%4.0f kJ & W_12=%3.0f kJ",Q_12,W_12);
