clc

m_O2=3; //kg
M_O2=32;

m_N2=9; //kg
M_N2=28;

R0=8.314;

R_O2=R0/M_O2;
R_N2=R0/M_N2;

x_O2=(m_O2/M_O2)/((m_O2/M_O2) + (m_N2/M_N2));
x_N2=(m_N2/M_N2)/((m_O2/M_O2) + (m_N2/M_N2));

dS=-m_O2*R_O2*log(x_O2) -m_N2*R_N2*log(x_N2);
disp("Change in entropy =")
disp(dS)
disp("kJ/kg K")