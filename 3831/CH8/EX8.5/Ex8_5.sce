// Example 8_5
clc;funcprot(0);
// Given data
V=1.00;// m^3
m=2.00;// kg
T_1=20.0;// °C
T_2=95.0;// °C
T_b=100.0;// °C

// Calculation
// (a)
v_1=V/m;// m^3/kg
v_2=v_1;// m^3/kg
// From Table C.1b of Thermodynamic Tables to accompany Modern Engineering Thermodynamics, we find that
// At 20.0°C
v_f1=0.001002;// m^3/kg
v_g1=57.79;// m^3/kg
v_fg1=v_g1-v_f1;// m^3/kg
u_f1=83.9;// kJ/kg
u_g1=2402.9;// kJ/kg
u_fg1=u_g1-u_f1;// kJ/kg
// At 95.0°C
v_f2=0.00104;// m^3/kg
v_g2=1.982;// m^3/kg
v_fg2=v_g2-v_f2;// m^3/kg
u_f2=397.9;// kJ/kg
u_g2=2500.6;// kJ/kg
u_fg2=u_g2-u_f2;// kJ/kg
x_1=(v_1-v_f1)/v_fg1;// The quality in the container when the contents are at 20.0°C
x_1p=x_1*100;// %
// (b)
x_2=(v_2-v_f2)/v_fg2;// The quality in the container when the contents are at 95.0°C.
x_2p=x_2*100;// %
// (c)
u_1=u_f1+(x_1*u_fg1);// kJ/kg
u_2=u_f2+(x_2*u_fg2);// kJ/kg
Q_12=m*(u_2-u_1);// kJ
// (d)
s_f1=0.2965;// kJ/kg.K
s_fg1=8.3715;// kJ/kg.K
s_f2=1.2503;// kJ/kg.K
s_fg2=6.1664;// kJ/kg.K
s_1=s_f1+((x_1)*s_fg1);// kJ/kg.K
s_2=s_f2+((x_2)*s_fg2);// kJ/kg.K
S_p_12=((m*(s_2-s_1))-(Q_12/(T_b+273.15)))*1000;// J/K
T_b_minimum=Q_12/(m*(s_2-s_1));// K
T_b_minimum=T_b_minimum-273.15;// °C
printf('\n(a)The quality in the container when the contents are at 20.0°C,x_1=%0.3f percentage \n(b)The quality in the container when the contents are at 95.0°C,x_2=%2.1f percentage \n(c)The heat transport of energy required to raise the temperature of the contents from 20.0 to 95.0°C,Q_12=%4.0f kJ/kg \n(d)The entropy production,S_P=%3.0f J/K \n   The minimum boundary temperature,(T_b)minimum=%2.1f°C',x_1p,x_2p,Q_12,S_p_12,T_b_minimum);
