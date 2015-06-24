clc
V=6; //m^3
%A=0.45;
%B=0.55;
R_A=0.288; //kJ/kg K
R_B=0.295; //kJ/kg K
m=2; //kg
T=303; //K

disp("(i) The partial pressures")
m_A=%A*m;
m_B=%B*m;

p_A=m_A*R_A*10^3*T/V/10^5; //bar
disp("p_A=")
disp(p_A)
disp("bar")

p_B=m_B*R_B*10^3*T/V/10^5; //bar
disp("p_B=")
disp(p_B)
disp("bar")


disp("(ii) The total pressure")
p=p_A+p_B;
disp("p=")
disp(p)
disp("bar")


disp("(iii) The mean value of R for the mixture")
Rm=(m_A*R_A + m_B*R_B)/(m_A + m_B);
disp("Rm=")
disp(Rm)
disp("kJ/kg K")