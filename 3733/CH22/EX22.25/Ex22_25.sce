// Example 22_25
clc;funcprot(0);
//Given data
P=30;// MW
p_1=60;// bar
p_2=3;// bar
T_1=500;// °C
p_v=73;// mm of Hg
p_b=76;// mm of Hg
n_t=90/100;// The isentropic efficiency of the turbine
 
//Calculation
p_3=(((p_b-p_v)/p_b)*1.013);// bar
//From h-s chart:
h_1=3410;// kJ/kg
h_2=2720;// kJ/kg
h_3=2220;// kJ/kg
// From steam tables
h_f2=361.4;// kJ/kg(liquid heat at 0.04 bar)
h_f3=121.4;// kJ/kg(liquid heat at 7 bar)
function[X]=mass(y)
    X(1)= (y(1)*(h_2-h_f2))-((1-y(1))*(h_f2-h_f3));
endfunction
y=[0.1];
z=fsolve(y,mass);
m=z(1);// kg/kg of steam
m_s=(P*10^3)/((h_1-h_2)+((1-m)*(h_2-h_3)));// kg/sec
m_s=m_s*(3600/1000);// tons/hr
printf('\n(a)Fraction of steam bled for feed heating=%0.3f kg/kg of steam \n(b)Steam supplied by the boiler=%0.1f tons/hr',m,m_s);
