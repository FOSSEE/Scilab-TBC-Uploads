// Example 32_37
clc;funcprot(0);
//Given data
L_cap=80;// MW
// n=0.91*(L)^0.49;(given)
T_1=[0 10 18 24];// Time in hours
L_1=[60 40 20];// Load in MW
H=60;// m
g=9.81;// m/s^2

// Calculation
//(i)
E_a=(L_1(1)*(T_1(2)-T_1(1)))+(L_1(2)*(T_1(3)-T_1(2)))+(L_1(3)*(T_1(4)-T_1(3)));// MW-hrs
L_a=E_a/24;// Average load on the plant in MW
L_max=L_1(1);// Maximum load in MW
LF=(L_a/L_max);// Load factor of the plant
CF=(L_a/L_cap);// Capacity factor of the plant
//(ii)
O_1=L_1(1)*(T_1(2)-T_1(1));// Output in MWh
n_1=0.91*(L_1(1)/L_cap)^0.49;// Efficiency
I_1=O_1/n_1;// Input in MW
O_2=L_1(2)*(T_1(3)-T_1(2));// Output in MWh
n_2=0.91*(L_1(2)/L_cap)^0.49;// Efficiency
I_2=O_2/n_2;// Input in MW
O_3=L_1(3)*(T_1(4)-T_1(3));// Output in MWh
n_3=0.91*(L_1(3)/L_cap)^0.49;// Efficiency
I_3=O_3/n_3;// Input in MW
// 1MWh=3.6*10^6 kJ
E_1=I_1*3.6*10^6;// kJ
E_2=I_2*3.6*10^6;// kJ
E_3=I_3*3.6*10^6;// kJ
m_w1=(E_1*1000)/(9.81*H*(T_1(2)-T_1(1))*3600);// Water flow in kg/sec
M_w1=(m_w1*(T_1(3)-T_1(2))*3600)/1000;// m^3
m_w2=(E_2*1000)/(9.81*H*(T_1(3)-T_1(2))*3600);// Water flow in kg/sec
M_w2=(m_w2*(T_1(3)-T_1(2))*3600)/1000;// m^3
m_w3=(E_3*1000)/(9.81*H*(T_1(4)-T_1(3))*3600);// Water flow in kg/sec
M_w3=(m_w3*(T_1(4)-T_1(3))*3600)/1000;// m^3
V=M_w1+M_w2+M_w3;// The water supplied during the day in m^3/day
n_o=(E_a/(I_1+I_2+I_3))*100;// Over all efficiency of the plant
printf('\nThe quantity of water required=%0.4e m^3/day \nThe load factor=%0.3f \nThe capacity factor=%0.2f \nOver all efficiency of the plant=%0.1f percentage',V,LF,CF,n_o);
// The answer provided in the textbook is wrong
