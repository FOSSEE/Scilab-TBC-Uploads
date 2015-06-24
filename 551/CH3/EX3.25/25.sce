clc
p=1.1; //bar
x=0.95;
c_pw=4.18;
m1=90; //kg
m2=5.25; //kg
T1=25; //0C
T2=40; //0C
m=m1+m2;
h_f=428.8; //kJ/kg
h_fg= 2250.8; //kJ/kg
m_s= [m*c_pw*(T2-T1)]/[(h_f + x*h_fg) - c_pw*T2];
disp("Mass of steam condensed=")
disp(m_s)
disp("kg")