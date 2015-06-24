clc
p=1*10^5; //Pa
T=298; //K
M_H2=2;
M_O2=32;
R0=8314;

// ratio = V_H2/V_O2=2;
ratio=2;

disp("(i) The mass of O2 required")
//Let the mass of O2 per kg of H2 = x kg
m_H2=1; //kg
n_H2=m_H2/M_H2;

// n_O2=x/M_O2
x=M_O2*n_H2/ratio;
disp("Mass of O2 per kg of H2=")
disp(x)
disp("kg")


disp("(ii) The volume of the container")
n_O2=x/M_O2;
n=n_H2 + n_O2;
V=n*R0*T/p;
disp("V=")
disp(V)
disp("m^3")