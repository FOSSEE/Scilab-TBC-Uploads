clc
cv_N2=0.744; //kJ/kg K
cv_H2=10.352; //kJ/kg K
cp_N2=1.041; //kJ/kg K
cp_H2=14.476; //kJ/kg K

V=0.45; //m^3
V_H2=0.3; //m^3
V_N2=0.15; //m^3

p_H2=3*10^5; //Pa
p_N2=6*10^5; //Pa

T_H2=403; //K
T_N2=303; //K

R_H2=8.314/2;
R_N2=8.314/28;

disp("(i) Temperature of equilibrium mixture")

m_H2=p_H2*V_H2/(R_H2*10^3)/T_H2;
m_N2=p_N2*V_N2/(R_N2*10^3)/T_N2;

T2=(m_H2*cv_H2*T_H2 + m_N2*cv_N2*T_N2)/(m_H2*cv_H2 + m_N2*cv_N2);
disp("T2=")
disp(T2)
disp("K")


disp("(ii) Pressure of the mixture")
p2_H2=m_H2*R_H2*10^3*T2/V;
p2_N2=m_N2*R_N2*10^3*T2/V;

p2=p2_H2+p2_N2;
disp("p2=")
disp(p2/10^5)
disp("bar")

disp("(iii) Change in entropy :")

dS_H2=m_H2*[cp_H2*log(T2/T_H2) - R_H2*log(p2_H2/p_H2)];
disp("Change in entropy of H2 =")
disp(dS_H2)
disp("kJ/K")

dS_N2=m_N2*[cp_N2*log(T2/T_N2) - R_N2*log(p2_N2/p_N2)];
disp("Change in entropy of N2 =")
disp(dS_N2)
disp("kJ/K")

dS=dS_H2+dS_N2;

disp("Total change in entropy =")
disp(dS)
disp("kJ/K")