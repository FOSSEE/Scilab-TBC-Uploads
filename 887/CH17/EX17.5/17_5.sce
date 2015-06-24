clc 
//ex17.5
V_a=480;      //phase voltage
f=60;      //frequency
P_dev=200*746;      //developed power
PF=0.85;      //power factor
I_f_1=10;      //field current
X_s=1.4;      //synchronous resistance
phi=acos(PF);
I_a_1_max=P_dev/(3*V_a*PF);      //phase current
I_a_1_phi=-phi;
I_a_1=I_a_1_max*complex(cos(-phi),sin(-phi));
E_r_1=V_a-%i*X_s*I_a_1;      //rotor induced voltage
[E_r_1_max,E_r_1_phi]=polar(E_r_1);
//to achieve 100 percent power factor, increase I_a until it is in phase with V_a
I_a_2=P_dev/(3*V_a*cos(0));
E_r_2=V_a-%i*X_s*I_a_2;
[E_r_2_max,E_r_2_phi]=polar(E_r_2);
I_f_2=I_f_1*E_r_2_max/E_r_1_max;      //magnitude of E_r proportional to field current
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
disp(I_f_2,'The new field current to achieve 100% power factor in amperes')
