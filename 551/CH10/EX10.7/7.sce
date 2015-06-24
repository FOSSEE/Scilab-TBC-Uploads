clc

//For air at 35 0C DBT and 50% RH
p_vs=0.0563; //bar; At 35 0C, from steam tables
phi=0.5;
p_t=1.0132;
t_db1=35; //0C
t_dp1=23; //0C
cp=1.005;
R=287;
p_v=phi*p_vs;
W1=0.622*p_v/(p_t-p_v);
h_g1=2565.3; //kJ/kg

h_vapour=h_g1 + 1.88*(t_db1 - t_dp1);
h1=cp*t_db1+W1*h_vapour;


disp("(i) R.H. of cooled air")
p_vs=0.0317;
phi=p_v/p_vs;
disp("RH of cooled air=")
disp(phi*100)
disp("%")


disp("(ii) Heat removed from air")
h_g2=2547.2; //kJ/kg
t_db2=25; //0C
t_dp2=23; //0C
W2=W1;
T=308; //K
V=40; //m^3

h_vapour=h_g2 + 1.88*(t_db2 - t_dp2);
h2=cp*t_db2+W2*h_vapour;
m=(p_t-p_v)*10^5*V/R/T;

//Let Heat removed be denoted by H
H=m*(h1-h2);
disp("Heat removed =") 
disp(H)
disp("kJ")