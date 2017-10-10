// Example 22_20
clc;funcprot(0);
//Given data
T_1=556;// °C
T_2=222;// °C
m_s=20;// kg/sec
n_m=80/100;// Mechanical efficiency
n_t=95/100;// Transmission efficiency
n_g=85/100;// Generator efficiency
W_act=50/100;
h_f1=76;// kJ/kg
h_f2=29;// kJ/kg
h_fg1=290;// kJ/kg
h_fg2=302;// kJ/kg
h_g1=366;// kJ/kg
h_g2=331;// kJ/kg
s_f1=0.152;// kJ/kg-K
s_f2=0.08;// kJ/kg-K
s_fg1=0.359;// kJ/kg-K
s_fg2=0.626;// kJ/kg-K
s_g1=0.511;// kJ/kg-K
s_g2=0.706;// kJ/kg-K
p_a=17;// bar
p_b=0.035;// bar
h_fa=874;// kJ/kg
h_fb=111;// kJ/kg
h_fga=1932;// kJ/kg
h_fgb=2453;// kJ/kg
h_ga=2806;// kJ/kg
h_gb=2564;// kJ/kg
s_fa=2.37;// kJ/kg-K
s_fb=0.388;// kJ/kg-K
s_ga=6.42;// kJ/kg-K
s_gb=0.388;// kJ/kg-K

// Calculation
//(a)
x_2=(s_g1-s_f2)/s_fg2;// The condition of the mercury vapour at point2
m_hg=h_fga/(x_2*h_fg2);// kg
//(b)
W=h_g1-(h_f2+(x_2*h_fg2));// kJ/kg
W_m=W*m_hg;//Work done per kg of Hg vapour in kJ
//(c)
// From steam tables,
T_sup=380+273;// K
T_sa=203.4+273;// K
T_b=26.5+273;// K
x_b=(((s_ga+(2*2.303*log(T_sup/T_sa)))*(T_b))-s_fb)/(T_b/h_fga);
T_sup=383+273;// K
x_2=0.72;
W_s=(h_ga+(2*(T_sup-T_sa)))-(h_fb+(x_2*h_fgb));// Work done per kg of steam in  kJ/kg
//(d)
W=W_m+W_s;// Total work done in kJ
Q_s=(m_hg*(h_g1-h_f2))+(1*(h_fa-h_fb))+(2*(T_sup-T_sa));// Heat supplied in kJ
n_o=(W/Q_s)*100;// Overall efficiency of the cycle in %
E=((m_s*W*W_act)*n_m*n_t*n_g)/1000;// Total energy generated per sec in MW
printf('\n(a)Mass of Hg required per kg of steam used=%0.1f kg \n(b)Work done per kg of Hg vapour=%0.1f kJ/kg \n(c)Work done per kg of steam=%0.0f kJ/kg \n(d)Overall efficiency of the cycle=%0.1f percentage \n(e)Total energy generated per sec=%0.3f MW',m_hg,W_m,W_s,n_o,E);
// The answer provided in the textbook is wrong

