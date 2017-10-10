// Example 22_17
clc;funcprot(0);
//Given data
P=500;// Plant capacity in kW
T_1=300;// °C
p_4=30;// bar
p_5=7;// bar
p_6=0.04;// bar
dT=5;// The rise in cooling water temperature in °C
C_pw=4.2;// kJ/kg.°C

// Calculation
// From h-s chart:
h_4=3000;// kJ/kg
h_5=2700;// kJ/kg
h_6=1970;// kJ/kg
// From steam tables
h_f1=121.4;// kJ/kg(at 0.04 bar)
h_f2=697;// kJ/kg(at 7 bar)
function[X]=mass(y)
    X(1)=((y(1)*h_5)+((1-y(1))*h_f1))-(1*h_f2);
endfunction
y=[0.1];
z=fsolve(y,mass);
m=z(1);// kg
W=(1*(h_4-h_5))+((1-m)*(h_5-h_6));// kJ/kg
Q_s=h_4-h_f2;// Heat supplied in kJ/kg
n_s=(W/Q_s)*100;// Efficiency in %
m_s=(P/W)*3600;//Steam generated per second in kg/hr
m_w=((h_6-h_f1)*(m_s/3600)*(1-m))/(C_pw*dT);// kg/sec
// If there ie no feed water,then
W_1=h_4-h_6;// kJ/kg
Q_s=h_4-h_f1;// kJ/kg
n=(W_1/Q_s)*100;// Efficiency in %
m_s1=(P/W_1)*3600;//Steam generated per second in kg/hr
m_w1=((m_s/3600)*(h_6-h_f1))/(C_pw*dT);// The amount of cooling water in kg/sec
printf('\n(a)The rankine efficiency=%0.1f percentage \n   Steam generation rate of boiler=%0.1f kg/hr \n   The amount of cooling water=%0.2f kg/sec \n(b)The rankine efficiency=%0.1f percentage \n   Steam generation rate of boiler=%0.1f kg/hr \n   The amount of cooling water=%0.2f kg/sec',n_s,m_s,m_w,n,m_s1,m_w1);
// The answer vary due to round off error
