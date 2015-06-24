//to compute the generator induced emf when fully loaded in long shunt compound and short shunt compound

clc;
P=75000;
V_t=250;
I_L=P/V_t;
R_a=.04;
R_se=.004;
R_f=100;
disp('case of long shunt');
I_f=V_t/R_f;
I_a=I_L+I_f;
V_b=2;
E_aLS=V_t+I_a*(R_a+R_se)+V_b;
disp(E_aLS,'generator induced emf(V)');

disp('case of short shunt');
V_b=V_t+I_L*R_se;
I_f=V_b/R_f;
I_a=I_L+I_f;
E_aSS=V_t+(I_a*R_a)+2;
disp(E_aSS,'generator induced emf(V)');

d=(E_aLS-E_aSS)*100/V_t;
disp(d,'percent diff');