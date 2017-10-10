// Example 22_16
clc;funcprot(0);
//Given data
T_1=459;// °C
T_3=420;// °C
p_1=70;// bar
p_2=25;// bar
p_3=10;// bar
p_4=0.07;// bar
n_t1=78.5/100;// The isentropic efficiency of the H.P turbine
n_t2=83/100;// The isentropic efficiency of the L.P turbine 1
n_t3=83/100;// The isentropic efficiency of the L.P turbine 2
T_7=179;// °C
P=20;// MW
n_m=85/100;// Mechanical efficiency of the turbine
n_t=95/100;// Transmission efficiency
n_g=95/100;// Generation efficiency

// Calculation
// From h-s chart:
h_1=3280;// kJ/kg
h_2a=2997;// kJ/kg
h_2=h_1-((n_t1)*(h_1-h_2a));// kJ/kg
h_3=3277;// kJ/kg
h_4a=3020;// kJ/kg
h_4=h_3-((n_t2)*(h_3-h_4a));// kJ/kg
h_5a=2220;// kJ/kg
h_5=h_4-((n_t3)*(h_4-h_5a));// kJ/kg
// From steam tables
h_f6=162;// kJ/kg(at 0.07 bar)
h_f7=758;// kJ/kg(at 10 bar)
function[X]=mass(y)
    X(1)=(y(1)*(h_4-h_f7))-((1-y(1))*(h_f7-h_f6));
endfunction
y=[0.1];// kg
z=fsolve(y,mass);
m=z(1);// kg
W=(h_1-h_2)+(h_3-h_4)+((1-m)*(h_4-h_5));// kJ/kg 
E_g=W*n_m*n_t*n_g;// Energy coverted for generating the electrical energy in kJ
m_s=((P*10^3)/E_g)*60;// Steam generated in kg/min
Q_s=(h_1-h_f7)+(h_3-h_2);// Heat supplied per kg of steam in kJ/kg
n_th=(W/Q_s)*100;// Thermal efficiency of the cycle in %
printf('\n(a)Thermal efficiency of the cycle=%0.1f percentage \n(b)Quantity of steam supplied per minute=%0.0f kg/min',n_th,m_s);
