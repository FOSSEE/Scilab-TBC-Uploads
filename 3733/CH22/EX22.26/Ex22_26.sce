// Example 22_26
clc;funcprot(0);
//Given data
p_1=80;// bar
T_1=470;// °C
p_2=7;// bar
T_1=350;// °C
p_3=0.35;// bar
m_s=50;// kg/sec

//Calculation
//From h-s chart:
h_1=3310;// kJ/kg
h_2=2780;// kJ/kg
h_3=3170;// kJ/kg
h_4=2220;// kJ/kg
// From steam tables
h_f2=697;// kJ/kg
h_6=h_f2;// kJ/kg
h_5=111.85;// kJ/kg
h_f4=h_5;// kJ/kg
function[X]=mass(y)
    X(1)= (y(1)*(h_2-h_f2))-((1-y(1))*(h_f2-h_f4));
endfunction
y=[0.1];
z=fsolve(y,mass);
m=z(1);// kg
m_b=m*100;// Amount of steam bled off in %
m_l=(100-m_b);// Amount of steam supplied to L.P turbine in %
Q_b=h_1-h_6;// kJ/kg
Q_r=(1-m)*(h_3-h_2);// kJ
Q_s=Q_b+Q_r;// Total amount of heat supplied by the boiler and reheater in kJ/kg
W=(h_1-h_2)+((1-m)*(h_3-h_4));// kJ/kg
n=(W/Q_s)*100;
P=(m_s*W)/1000;// Power developed by the steam in MW
printf('\n(a)Amount of steam bled off for feed heating=%0.0f percentage \n(b)Amount of steam in LP turbine=%0.0f percentage \n(c)Heat supplied in the boiler and reheater=%0.1f kJ/kg \n(d)Cycle efficiency=%0.1f percentage \n(e)Power developed by the steam=%0.1f MW',m_b,m_l,Q_s,n,P);
// The answer provided in the textbook is wrong
