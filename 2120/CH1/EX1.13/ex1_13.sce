// Exa 1.13
clc;
clear;
close;
// Given data
m_b = 1;// in kg
t_ib = 80;//in degree c
m_w = 10;// in kg
t_iw = 25;// in degree c
del_t = 5;// in degree c
S_w = 4.18;//  in kJ/kg
t_equ = (t_iw + del_t);// in degree c
// Heat loss by metal = Heat gained by water
S_b = m_w * S_w * (t_equ - t_iw)/(m_b * (t_ib - t_equ));// in kJ/kg-K
disp(S_b,"Specific heat of metal block in kJ/kg-K is");
