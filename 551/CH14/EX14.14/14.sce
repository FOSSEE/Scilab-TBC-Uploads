clc
h_f2=158.2; //kJ/kg
x2=0.62;
h_fg2=1280.8;
h1=298.9; //kJ/kg
h_f4=h1;
s_f2=0.630; //kJ/kg K
T2=268; //K
T3=298; //K
s_f3=1.124; //kJ/kg K
h_fg3=1167.1; //kJ/kg
m=6.4; //kg/min
cp=4.187;
L=335; //kJ/kg
h_f3=298.9; //kJ/kg

h2=h_f2+x2*h_fg2;
x3=((s_f2-s_f3)+x2*h_fg2/T2)/h_fg3*T3;
h3=h_f3+x3*h_fg3;

COP_theoritical=(h2-h1)/(h3-h2);
COP_actual=0.55*COP_theoritical;

W1=h3-h2; //Work done per kg of refrigerant
W=m*W1/60; //Work done per second kJ/s

Q=15*cp+L;
m_ice=W*3600*24/Q;
disp("Amount of ice formed in 24 hours =")
disp(m_ice)
disp("kg")