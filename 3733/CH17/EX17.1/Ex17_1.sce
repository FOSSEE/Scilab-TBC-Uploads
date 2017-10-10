// Example 17_1
clc;funcprot(0);
// Given data
P_1=100;// bar
T_1=400;// °C
n_t=80;// The isentropic efficiency of the turbine in %
P_2=0.1;// Pressure in the condenser in bar
SSC=4;// The specific steam consumption in kg/kWh
T_c=5;// Under cooling temperature in the condenser in °C
//gradT=(T_wo-T_wi)
gradT=10;// Rise in temperature of the cooling water in °C
P=120;// Plant capacity in kW
C_pw=4.2;// kJ/kg.°C

//Calculation
//(a)
m_s=SSC*P*10^3;// The steam to be condensed in the condenser in kg/hr
// For condenser,Heat gained by water= Heatlost by steam
// From h-s chart,
h_3=1970;// kJ/kg
//From steam table at 0.1 bar
h_f3=191.8;// kJ/kg
m_w=(m_s*(h_3-h_f3))/(C_pw*gradT);// Mass flow rate of water in kg/hr
m_w=(m_w/(1000*60));// tons/min
printf('\n(a)The cooling water required per minute in the condenser=%0.1f tons/min',m_w);
// The answer provided in the textbook is wrong
