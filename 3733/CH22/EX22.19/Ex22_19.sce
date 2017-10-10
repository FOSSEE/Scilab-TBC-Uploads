// Example 22_19
clc;funcprot(0);
//Given data
P=100;// MW
p_2=80;// bar
p_3=7;// bar
p_5=0.05;// bar
T_4=350;// °C

// Calculation
// From h-s chart:
h_2=2990;// kJ/kg
h_3=2350;// kJ/kg
h_4=3170;// kJ/kg
h_5=2180;// kJ/kg
// From steam tables
h_f6=138;// kJ/kg
h_f7=697;// kJ/kg
function[X]=mass(y)
    X(1)= (y(1)*(h_3-h_f7))-((1-y(1))*(h_f7-h_f6));
endfunction
y=[0.1];
z=fsolve(y,mass);
m=z(1);
m_p=m*100;// Percentage of bled steam in %
W=(h_2-h_3)+((1-m)*(h_4-h_5));// kJ/kg
Q_s=(h_2-h_f7)+((1-m)*(h_4-h_3));// kJ/kg
n=(W/Q_s)*100;// The efficiency of the power plant in %
m_b=((P*10^3)/((h_2-h_3)+((1-m)*(h_4-h_5))));// tons/hr
printf('\nThe percentage of bled steam=%0.1f percentage \nThe thermal efficiency of the cycle=%0.0f percentage \nBoiler generating rate=%0.0f tons/hr',m_p,n,m_b);
// The answer provided in the textbook is wrong

