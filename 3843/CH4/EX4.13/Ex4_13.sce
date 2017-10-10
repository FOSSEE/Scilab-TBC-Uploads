// Example 4_13
clc;funcprot(0);
// Given data
P_1=8000;// kPa
T_1=300;// °C
P_2=1600;// kPa
h_1=2785;// kJ/kg
h_g=2794;// kJ/kg

// Calculation
// By using steam tables
T_2=201.4;// The final temperature in °C
h_f2=859;// kJ/kg
h_fg2=1935;// kJ/kg
h_2=h_1;// kJ/kg
x_2=(h_2-h_f2)/h_fg2;// The quality of steam at exit
v_f2=0.0012;// m^3/kg
v_fg2=0.1238;// m^3/kg
v_2=v_f2+(x_2*(v_fg2-v_f2));// The specific volume of the steam at exit in m^3/kg
printf("\nThe final temperature of the steam,T_2=%3.1f°C \nThe specific volume of the steam at exit,v_2=%0.4f m^3/kg",T_2,v_2);
