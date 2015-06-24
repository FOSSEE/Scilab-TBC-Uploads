clc
p1=15; //bar
p2=p1;
p3=1; //bar
t_sup3=150; //0C
m_w=0.5; //kg/min
m_s=10; //kg/min
h_f2=844.7; //kJ/kg
h_fg2=1945.2; //kJ/kg
h_sup3=2776.4; //kJ/kg
x2=(h_sup3 - h_f2)/h_fg2;
x1=x2*m_s/(m_s + m_w);
disp("Quality of steam supplied = ")
disp(x1)