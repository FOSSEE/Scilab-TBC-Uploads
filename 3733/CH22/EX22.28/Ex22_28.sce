// Example 22_28
clc;funcprot(0);
//Given data
p_1=80;// bar
T_1=470;// °C
p_2=7;// bar
T_1=350;// °C
p_3=0.035;// bar
m_s=100;// kg/sec

//Calculation
//From h-s chart:
h_1=3350;// kJ/kg
h_2=2770;// kJ/kg
h_3=3170;// kJ/kg
h_4=2220;// kJ/kg
// From steam tables
h_f5=112;// kJ/kg
h_f6=697;// kJ/kg
function[X]=mass(y)
    X(1)= (y(1)*(h_2-h_f6))-((1-y(1))*(h_f6-h_f5));
endfunction
y=[0.1];
z=fsolve(y,mass);
m=z(1);// kg
m_b=m*100;// The fraction of steam bled for reheating in %
Q_s=(h_1-h_f6)+((1-m)*(h_3-h_2));// Heat supplied in the boiler and reheater in kJ/kg
W=(h_1-h_2)+((1-m)*(h_3-h_4));// Power output in kJ/kg
P=(W*100)/1000;// Capacity of the plant in MW
n=(W/Q_s)*100;// The efficiency of the plant in %
printf('\n(a)Fraction of steam bled for feed heating=%0.0f percentage \n(b)Heat supplied per kg of steam in boiler and turbine=%0.0f kJ/kg \n(c)Power output of the plant=%0.0f MW \n(d)Thermal efficiency of the plant=%0.1f percentage',m_b,Q_s,P,n);
// The answer vary due to round off error
