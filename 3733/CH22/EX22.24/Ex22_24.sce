// Example 22_24
clc;funcprot(0);
//Given data
T_1=300;// °C
p_1=30;// bar
p_2=10;// bar
p_4=5;// bar
T_4=270;// °C
p_6=0.07;// bar
m_s=20;// tons/hr
C_pw=4.2;// kJ/kg.°C
T_9=180;// °C
T_8=38;// °C

//Calculation
//From h-s chart:
h_1=3000;// kJ/kg
h_2=2780;// kJ/kg
h_3=2640;// kJ/kg
// From steam tables
h_f2=762.5;// kJ/kg
function[X]=mass(y)
    X(1)= (y(1)*(h_2-h_f2))-((1-y(1))*C_pw*(T_9-T_8));
endfunction
y=[0.1];
z=fsolve(y,mass);
m=z(1);// kg
//From h-s chart:
h_4=3000;// kJ/kg
h_5=(((1/3)*h_4)+(((2/3)-m)*h_3))/(1-m);// kJ/kg
//From h-s chart:
h_6=2150;// kJ/kg
// From steam tables
h_f7=h_f2;// kJ/kg
W=(((2/3)*(h_1-h_2))+(((2/3)-m)*(h_2-h_3))+((1-m)*(h_5-h_6)));// kJ/kg
n=((((2/3)*(h_1-h_2)+((2/3)-m)*(h_2-h_3))+((1-m)*(h_5-h_6)))/(((2/3)*h_1)+((1/3)*h_4)-h_f7))*100;// Efficiency of the cycle in %
m_s=(m_s*1000)/3600;// Steam generated per second in kg/sec
P=m_s*W;// Power generating capacity of the plant in kW
printf('\nFraction of steam bled=%0.4f \nEfficiency of the plant=%0.1f percentage \nPower generating capacity of the plant=%0.0f kW',m,n,P);
// The answer provided in the textbook is wrong
