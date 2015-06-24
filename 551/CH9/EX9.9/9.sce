clc

p=1.3; //bar
R0=8.314;

M_CO2=44;
M_O2=32;
M_N2=28;
M_CO=28;

m_O2=0.1;
m_N2=0.7;
m_CO2=0.15;
m_CO=0.05;

//Considering 1 kg of mixture
m=1; //kg

//let moles be denoted by n
n_O2=m_O2/M_O2;
n_N2=m_N2/M_N2;
n_CO2=m_CO2/M_CO2;
n_CO=m_CO/M_CO;

M=1/(m_O2/M_O2 + m_N2/M_N2 + m_CO2/M_CO2 + m_CO/M_CO);

n=m/M;

x_O2=n_O2/n;
x_N2=n_N2/n;
x_CO2=n_CO2/n;
x_CO=n_CO/n;

disp("(i) Partial pressures of the constituents")
P_O2=x_O2*p;
disp("Partial pressure of O2=")
disp(P_O2)
disp("bar")

P_N2=x_N2*p;
disp("Partial pressure of N2=")
disp(P_N2)
disp("bar")

P_CO2=x_CO2*p;
disp("Partial pressure of CO2=")
disp(P_CO2)
disp("bar")

P_CO=x_CO*p;
disp("Partial pressure of CO=")
disp(P_CO)
disp("bar")

disp("Gas constant of mixture =")
R_mix=R0/M;
disp(R_mix)
disp("kJ/kg K")