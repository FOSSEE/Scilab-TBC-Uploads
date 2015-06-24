clc
p=5; //bar
m=50; //kg
T1=20; //0C
m_s=3; //kg
T2=40; //0C
m_eq=1.5; //kg
h_f=640.1; //kJ/kg
h_fg=2107.4; //kJ/kg
c_pw=4.18;
m_w=m+m_eq;
x=[(m_w*c_pw*(T2-T1))/m_s + c_pw*T2 - h_f]/h_fg;
disp("Dryness fraction of steam")
disp(x)