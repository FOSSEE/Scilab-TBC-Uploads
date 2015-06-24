clc
//At 30bar, 400 0C

h1=3230.9; //kJ/kg
s1=6.921; //kJ/kg
s2=s1;
s3=s1;
//At 5 bar
s_f1=1.8604;
s_g1=6.8192; //kJ/kg K
h_f1=640.1; //kJ/kg

t2=172 //0C
h2=2796; //kJ/kg

//At 0.1 bar
s_f3=0.649; //kJ/kg K
s_fg3=7.501; //kJ/kg K
h_f3=191.8; //kJ/kg
h_fg3=2392.8; //kJ/kg

x3=(s2-s_f3)/s_fg3;
h3=h_f3+x3*h_fg3;

h_f4=191.8; //kJ/kg
h_f5=h_f4;

h_f6=640.1; //kJ/kg
h_f7=h_f6;
s7=1.8604; //kJ/kg K
s4=0.649; //kJ/kg K

m=(h_f6-h_f5)/(h2-h_f5);

W_T=(h1-h2) + (1-m)*(h2-h3);

Q1=h1-h_f6;

disp("(i) Efficiency of cycle =")
n_cycle=W_T/Q1;
disp(n_cycle)

SR=3600/W_T; //Steam rate
disp("Steam rate =")
disp(SR)
disp("kg/kWh")


T_m1=(h1-h_f7)/(s1-s7);

T_m1r=(h1-h_f4)/(s1-s4); //Without regeneration

dT_m1=T_m1-T_m1r;
disp("Increase in T_m1 due to regeneration=")
disp(dT_m1)
disp("0C")

W_Tr=h1-h3; //Without regeneration
SR1=3600/W_Tr; //Steam rate without regeneration
dSR=SR-SR1; 
disp("Increase in steam rate due to regeneration=")
disp(dSR)
disp("kg/kWh")

n_cycle1=(h1-h3)/(h1-h_f4); //without regeneration
dn_cycle=n_cycle-n_cycle1;
disp("Increase in cycle efficiency due to regeneration")
disp(dn_cycle*100)
disp("%")
