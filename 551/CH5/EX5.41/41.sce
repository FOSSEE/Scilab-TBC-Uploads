clc
cv=0.715; //kJ/kg K
R=0.287; //kJ/kg K
V_A=0.25; //m^3
p_Ai=1.4; //bar
T_Ai=290; //K
V_B=0.25; //m^3
p_Bi=4.2; //bar
T_Bi=440; //K

disp("(i) Final equilibrium temperature")
m_A=p_Ai * 10^5 * V_A / R / 1000/ T_Ai; //kg
m_B=p_Bi * 10^5 * V_B / R / 1000/ T_Bi; //kg

T_f=(m_B * T_Bi + m_A * T_Ai)/(m_A + m_B);
disp("T_f = ")
disp(T_f)
disp("K")


disp("(ii) Final pressure on each side of the diaphragm")
p_Af=p_Ai*T_f/T_Ai;
disp("p_Af=")
disp(p_Af)
disp("bar")

p_Bf=p_Bi*T_f/T_Bi;
disp("p_Bf=")
disp(p_Bf)
disp("bar")


disp("(iii) Entropy change of the system")
dS_A=m_A*cv*log(T_f/T_Ai);
dS_B=m_B*cv*log(T_f/T_Bi);
dS_net=dS_A+dS_B;
disp("Net change of entropy=")
disp(dS_net)
disp("kJ/K")