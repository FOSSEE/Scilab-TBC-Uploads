clc

//For air at 20 0C and 75% R.H
p_vs=0.0234; //bar
phi=0.75;
p_t=1.0132;
cp=1.005;
t_db=20; //0C


p_v=phi*p_vs;
t_dp=15 + (16-15)*(0.01755-0.017)/(0.0182-0.017);
W=0.622*p_v/(p_t-p_v);

h_g=2538.1; //kJ/kg
h_vapour=h_g + 1.88*(t_db - t_dp);
h1=cp*t_db + W*h_vapour;


disp("(i) Relative humidity of heated air :")

//For air at 30°C DBT
p_vs=0.0425; //bar; corresponding to 30 0C
phi=p_v/p_vs;
disp("Relative humidity=")
disp(phi*100)
disp("%")


disp("(ii) Heat added to air per minute")
h_g=2556.3; //kJkg
t_db=30;
h2=cp*t_db+W*h_vapour;
V=90; //m^3
R=287;
T=293; //K

m=(p_t-p_v)*V*10^5/R/T;

Amt=m*(h2-h1);
disp("Amount of heat added per minute=")
disp(Amt)
disp("kJ")