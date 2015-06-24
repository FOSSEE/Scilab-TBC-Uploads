clc

disp("(i) Make-up water required")
p_vs=0.0206; //bar
phi=0.6;
p_t=1.013; //bar

p_v1=phi*p_vs;
p_a1=p_t-p_v1;
V=9; //m^3
R=287;
T=291; //K

m_a=p_a1*10^5*V/R/T;

m_v1=0.0828; //kg/s

//At exit at 26 0C
p_vs=0.0336; //bar
phi=1;
p_v=p_vs;
W2=0.622*p_v/(p_t-p_v);
m_v2=W2*m_a;

m=m_v2-m_v1;
disp("Make-up water required=")
disp(m)
disp("kg/s")


disp("(ii) Final temperature of the water")
m_w1=5.5; //kg/s
m_w2=m_w1-m;

Wi=4.75; //kJ/s

h_w1=184.3; //kJ/kg
h_a1=18.09; //kJ/kg
h_v1=2534.74; //kJ/kg

h_v2=2549; //kJ/kg
h_a2=26.13; //kJ/kg

h_w2=(Wi + m_w1*h_w1 + m_a*h_a1 + m_v1*h_v1 - m_a*h_a2 - m_v2*h_v2)/m_w2;

//By interpolation, h_w2 corresponds to t
t=26.7; //0C
disp("final temperature of water=")
disp(t)
disp("0C")


