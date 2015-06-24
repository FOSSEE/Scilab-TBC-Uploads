clc;
R_=8.3145;
m_=28;
R=R_/m_;
T=273+20;
p2=4.2;//bar
p1=1.01;//bar
W=R*T*log(p2/p1);
disp("work input:");
disp("kJ/kg",W);

disp("heat rejected:");
disp("kJ/kg",W);//Q+W=0
