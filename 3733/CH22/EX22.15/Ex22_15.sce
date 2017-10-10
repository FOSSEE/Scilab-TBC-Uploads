// Example 22_15
clc;funcprot(0);
//Given data
T_1=400;// °C
p_1=40;// bar
p_2=2;// bar
p_3=0.5;// bar
p_4=0.05;// bar
n_t1=75/100;// The isentropic efficiency of the first stage of the turbine
n_t2=80/100;// The isentropic efficiency of the second stage of the turbine
n_t3=85/100;// The isentropic efficiency of the third stage of the turbine
m_s=10;// The steam flow in kg/sec

// Calculation
// From h-s chart:
h_1=3210;// kJ/kg
h_2a=2562;// kJ/kg
h_2=h_1-((n_t1)*(h_1-h_2a));// kJ/kg
h_3a=2508;// kJ/kg
h_3=h_2-((n_t2)*(h_2-h_3a));// kJ/kg
h_4a=2232;// kJ/kg
h_4=h_3-((n_t3)*(h_3-h_4a));// kJ/kg
// From steam tables
h_f8=502;// kJ/kg(2 bar)
h_f10=h_f8;// kJ/kg
h_f6=339;// kJ/kg(0.5 bar)
h_f7=h_f6;// kJ/kg
h_f9=h_f6;// kJ/kg
h_f5=136;// kJ/kg(0.05 bar)
//Assume m_1=y(1);m_2=y(2)
function[X]=mass(y)
    X(1)=(y(1)*(h_2-h_f10))-((1-y(1))*(h_f8-h_f7));
    X(2)=(y(2)*(h_3-h_f9))-((1-y(1)-y(2))*(h_f6-h_f5));
endfunction
y=[0.01 0.01];
z=fsolve(y,mass);
m_1=z(1);// kJ/kg 
m_2=z(2);// kJ/kg
W=(h_1-h_2)+((1-m_1)*(h_2-h_3))+((1-m_1-m_2)*(h_3-h_4));// kJ/kg 
P=W*m_s;// Power developed by the turbine in kW
Q_s=h_1-h_f10;// Heat supplied per kg of steam in kJ/kg
n_th=(W/Q_s)*100;// Thermal efficiency of the cycle in %
printf('\n(a)Steam bled for regenerative heaters per kg of steam to turbine,m_1=%0.4f kJ/kg & m_2=%0.4f kJ/kg \n(b)Power developed by the turbine=%0.0f kW \n(c)Thermal efficiency of the cycle=%0.2f percentage',m_1,m_2,P,n_th);
// The answer provided in the textbook is wrong

