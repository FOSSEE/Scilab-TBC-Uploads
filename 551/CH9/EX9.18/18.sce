clc
m_O2=4; //kg
m_N2=6; //kg
p=4*10^5; //Pa
T=300; //K
M_O2=32;
M_N2=28;
m=10; //kg

disp("(i) The mole fraction of each component")
n_O2=m_O2/M_O2;
n_N2=m_N2/M_N2;

x_O2=n_O2/(n_O2+n_N2);
disp("x_O2=")
disp(x_O2)

x_N2=n_N2/(n_N2+n_O2);
disp("x_N2=")
disp(x_N2)


disp("(ii) The average molecular weight")
M=(n_O2*M_O2 + n_N2*M_N2)/(n_O2 + n_N2);
disp("M=")
disp(M)


disp("(iii) The specific gas constant")
R0=8.314;
R=R0/M;
disp("R=")
disp(R)
disp("kJ/kg K")

disp("(iv) The volume and density")

V=m*R*T*10^3/p;
disp("V=")
disp(V)
disp("m^3")

rho=(m_O2/V) + (m_N2/V);
disp("density=")
disp(rho)
disp("kg/m^3")


disp("(v) The partial pressures and partial volumes")

p_O2=n_O2*R0*10^3*T/V/10^5; //bar
disp("p_O2=")
disp(p_O2)
disp("bar")

p_N2=n_N2*R0*10^3*T/V/10^5; //bar
disp("p_N2=")
disp(p_N2)
disp("bar")

V_O2=x_O2*V;
disp("V_O2=")
disp(V_O2)
disp("m^3")

V_N2=x_N2*V;
disp("V_N2=")
disp(V_N2)
disp("m^3")
