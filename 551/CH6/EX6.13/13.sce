clc
m_i=1; //kg
T_i=273; //K
m_w=12; //kg
T_w=300; //K
T0=288; //K
c_pw=4.18; //kJ/kg K
c_pi=2.1; //kJ/kg K
L_i=333.5; //kJ/kg

Tc=(m_w*c_pw*T_w + m_i*c_pw*T_i - L_i)/(m_w*c_pw + m_i*c_pw);

dS_w=m_w*c_pw*log(Tc/T_w);
dS_i=m_i*c_pw*log(Tc/T_i) + L_i/T_i;

dS_net=dS_w+dS_i;
disp("Increase in entropy =")
disp(dS_net)
disp("kJ/K")

dAE=T0*dS_net;
disp("Increase in unavailable energy = ")
disp(dAE)
disp("kJ")