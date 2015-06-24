clc
m_N2=2.5; //kg 
M_N2=28;

p_N2=15; //bar
p_total=20; //bar

n_N2=m_N2/M_N2;
p_O2=p_total-p_N2;

n_O2=p_O2/p_N2*n_N2;
M_O2=32;

m_O2=n_O2*M_O2;
disp("Mass of O2 added =")
disp(m_O2)
disp("kg")