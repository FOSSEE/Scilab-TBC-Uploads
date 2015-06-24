clc
V=0.35; //m^3
m_CO=0.4; //kg
m_air=1; //kg
m_O2=0.233; //kg
m_N2=0.767; //kg
T=293; //K
R0=8.314; //kJ/kg K
M_O2=32; //Molecular mass of O2
M_N2=28; //Molecular mass of N2
M_CO=28; //Molecular mass of CO

disp("Partial Pressures=")

p_O2=m_O2*R0*10^3*T/M_O2/V/10^5; //bar
disp("partial pressure for p_O2")
disp(p_O2)
disp("bar")

p_N2=m_N2*R0*10^3*T/M_N2/V/10^5; //bar
disp("partial pressure for p_N2")
disp(p_N2)
disp("bar")

p_CO=m_CO*R0*10^3*T/M_CO/V/10^5; //bar
disp("partial pressure for p_CO")
disp(p_CO)
disp("bar")


disp("(ii) Total pressure in the vessel")
p=p_O2+p_N2+p_CO;
disp("p=")
disp(p)
disp("bar")