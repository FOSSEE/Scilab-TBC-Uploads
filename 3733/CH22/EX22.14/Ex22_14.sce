// Example 22_14
clc;funcprot(0);
//Given data
T_1=350;// °C
p_1=30;// bar
p_2=6;// bar
p_3=1;// bar
p_4=0.07;// bar
P=10;// Power developed by the turbine in MW
n_t=80/100;// Isentropic efficiency of each stage

// Calculation
// From h-s chart:
h_1=3106;// kJ/kg
h_2=2811;// kJ/kg
h_3=2560;// kJ/kg
h_4=2259;// kJ/kg
// From steam tables
h_f2=777;// kJ/kg (at 6 bar)
h_f3=415;// kJ/kg (at 1 bar)
h_f5=162;//kJ/kg (at 0.07 bar)
h_f8=h_f2;// kJ/kg 
h_f6=h_f3;// kJ/kg 
//Assume m_1=y(1);m_2=y(2)
function[X]=mass(y)
    X(1)=(y(1)*(h_2-h_f2))-(1*(h_f8-h_f6));
    X(2)=((y(2)*(h_3-h_f3))+(y(1)*(h_f2-h_f3)))-((1-y(1)-y(2))*(h_f6-h_f5));
    X(3)=(((1-y(1)-y(2)))*h_f6)+((y(1)+y(2))*h_f3)-(y(3));
endfunction
y=[0.1 0.01 100];
z=fsolve(y,mass);
m_1=z(1);// kg/kg of steam generated
m_2=z(2);// kg/kg of steam generated
W_t=(h_1-h_2)+((1-m_1)*(h_2-h_3))+((1-m_1-m_2)*(h_3-h_4));// kJ/kg 
m_s=((P*10^3)/W_t)*60;// kg/sec
m_s6=(m_s*m_1);// Quantity of steam extracted per minute at 6 bar pressure in kg/min
m_s1=(m_s*m_2);// Quantity of steam extracted per minute at 1 bar pressure in kg/min
C=m_s6+m_s1;// Capacity of feed pump extraction pump in kg/min
printf('\nQuantity of steam extracted per minute at 6 bar pressure=%0.1f kg/min \nQuantity of steam extracted per minute at 1 bar pressure=%0.1f kg/min \nCapacity of feed pump extraction pump=%0.1f kg/min',m_s6,m_s1,C);
// The answer provided in the textbook is wrong
