// Exa 6.15
clc;
clear;
close;
// Given data
m_s = 2.2;// in kg 
m_w = 0.18;// in kg
x1 = m_s/(m_s+m_w);
h_f1 = 743;
h_fg1 = 2031;
h_g2 = 2685;
C_P = 2;
T_sup = 115;// in degree C
T_sat = 104.8;// in degree C
x2 = (h_g2 + (C_P*(T_sup-T_sat)) - h_f1)/h_fg1;
x = x1 *  x2;
disp(x,"The dryness fraction of steam is");
