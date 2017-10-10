// Example 22_22
clc;funcprot(0);
//Given data
P=30;// MW
p_1=0.04;// bar
p_2=7;// bar
p_3=60;// bar
T_1=550;// °C
p_c=730;// mm of Hg
p_v=760;// mm of Hg
n_t=90/100;// The isentropic efficiency of the turbine
 
//Calculation
p_1=((p_v-p_c)*133.3)/10^5;// bar
//From h-s chart:
h_1=3420;// kJ/kg
h_2a=2860;// kJ/kg
h_2=2900;// kJ/kg
h_3=2410;// kJ/kg
h_3a=2190;// kJ/kg
// From steam tables
h_f3=121.5;// kJ/kg(liquid heat at 0.04 bar)
h_f2=697;// kJ/kg(liquid heat at 7 bar)
function[X]=mass(y)
    X(1)= (y(1)*(h_2-h_f2))-((1-y(1))*(h_f2-h_f3));
endfunction
y=[0.1];
z=fsolve(y,mass);
m=z(1);// kg
m_s=(P*10^3)/((h_1-h_2)+((1-m)*(h_2-h_3a)));// kg/sec
printf('\n(a)Fraction of steam bled for feed heating=%0.3f kg \n(b)Boiler generating capacity=%0.1f kg/sec',m,m_s);
