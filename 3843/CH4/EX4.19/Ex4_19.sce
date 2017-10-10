// Example 4_19
clc;funcprot(0);
// Given data
V=300;// ft^3
T=800;// °C
P=500;// psia
P_4=500;// psia

// Calculation
// (a)
Q=0;// Btu/lbm
m_i=0;// lbm
// From Table C-3E,
h_1=1412.1;// Btu/lbm
u_f=h_1;// Btu/lbm
// At T=1100,u_f=1406.0;T=1200,u_f=1449.2
T_f=(((u_f-1406.0)/(1449.2-1406.0))*(1200-1100))+1100;// °F
// (b)
v_f=(((T_f-1100)/(1200-1100))*(1.9518-1.8271))+1.8271;// ft^3/lbm
m_f=V/v_f;// lbm
printf("\n(a)The temperature of steam in the tank,T_f=%4.1f°F \n(b)The mass of steam that flows into the tank,m=%3.1f lbm",T_f,m_f);
