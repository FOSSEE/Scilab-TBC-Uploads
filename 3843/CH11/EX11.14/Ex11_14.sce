// Example 11_14
clc;funcprot(0);
// Given data
m_w3=10000;// kg/min
T_ain=20;// The temperature of air at inlet in °C
phi_1=50;// Humidity in %
T_aout=32;// The temperature of air at exit in °C
phi_2=98;// Humidity in %
T_win=40;// The temperature of water at inlet in °C
T_wout=25;// The temperature of water at exit in °C

// Calculation
// (a)
// From the psychrometric chart we find
h_1=37;// kJ/kg of dry air
h_2=110;// kJ/kg of dry air
w_1=0.0073;// kgH2O/kg dry air
w_2=0.0302;// kgH2O/kg dry air
// From steam tables
h_3=167.5;// kJ/kg
h_4=104.9;// kJ/kg
m_a=(m_w3*(h_4-h_3))/(h_1-h_2+((w_2-w_1)*h_4));// kg/min
// From the psychrometric chart we find
v_1=0.84;// m^3/ kg dry air
Vdot=m_a*v_1;// m^3/min
// (b)
m_4=m_w3-((w_2-w_1)*m_a);// kg/min
printf("\n(a)The volume flow rate of air into the cooling tower,Vdot=%4.0f m^3/min \n(b)The mass flux of water,m_4=%4.0f kg/min",Vdot,m_4);
