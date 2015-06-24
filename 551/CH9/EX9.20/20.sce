clc

cv_O2=0.39; //kJ/kg K
cv_N2=0.446; //kJ/kg K
n_O2=1;
n_N2=2;
M_O2=32;
M_N2=28;
m_O2=32; //kg
m_N2=2*28; //kg
T_O2=293; //K
T_N2=301; //K
R0=8.314;
p_O2=2.5*10^5; //Pa
p_N2=1.5*10^5; //Pa

T2=(m_O2*cv_O2*T_O2 + m_N2*cv_N2*T_N2)/(m_O2*cv_O2 + m_N2*cv_N2);

V_O2=n_O2*R0*10^5*T_O2/p_O2;
V_N2=n_N2*R0*10^5*T_N2/p_N2;
V=V_O2+V_N2;

dS=m_O2*[cv_O2*log(T2/T_O2) + R0/M_O2*log(V/V_O2)] + m_N2*[cv_N2*log(T2/T_N2) + R0/M_N2*log(V/V_N2)];
disp("dS=")
disp(dS)
disp("kJ")