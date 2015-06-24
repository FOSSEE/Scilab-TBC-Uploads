clc
m_w=2; //kg
m_s=20.5; //kg
t_sup=110; //0C
p1=12; //bar
p3=1; //bar
p2=p1;
h_f2=798.4; //kJ/kg
h_fg2=1984.3; //kJ/kg
T_s=99.6; //0C
h_f3=417.5; //kJ/kg
h_fg3=2257.9; //kJ/kg
T_sup=110; //0C
c_ps=2; //kJ/kg.K
x2=[h_f3+h_fg3 + c_ps*(T_sup-T_s) - h_f2]/h_fg2;
x1=x2*m_s/(m_w+m_s);
disp("Quality of steam supplied = ")
disp(x1)