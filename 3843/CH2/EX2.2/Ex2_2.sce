// Example 2_2
clc;funcprot(0);
// Given data
m=4;// The mass of water in kg
V=1;// m^3
T=150;// °C
v=0.3928;// m^3/kg

// Calculation
// Table C-1 is used
V=m*v;// m^3
// (a)
P=475.8;// The pressure in kPa
// (b)
v=1/4;// m^3/kg
v_f=0.00109;// m^3/kg
v_g=0.3928;// m^3/kg
x=(v-v_f)/(v_g-v_f);// The quality of steam
m_g=m*x;// The mass of vapor in kg
// (c)
V_g=v_g*m_g;// The volume of the vapor in m^3
printf("\n(a)The pressure,P=%3.1f kPa \n(b)The mass of vapor,m_g=%1.3f kg \n(c)The volume of the vapor,V_g=%0.4f m^3",P,m_g,V_g);
