clc

//For the air at 35°C DBT and 50% R.H.
p_vs=0.0563; //bar; At 35 0C, from steam tables
phi=0.5;
p_v=phi*p_vs;
p_t=1.0132; //bar

t_dp1=23; //0C
t_db1=35; //0C
W1=0.622*p_v/(p_t-p_v);
h_g1=2565.3; //kJ/kg
R=287;
cp=1.005;

h_vapour=h_g1 + 1.88*(t_db1 - t_dp1);
h1=cp*t_db1+W1*h_vapour;


disp("(i) Relative humidity of out coming air and its wet bulb temperature.")

disp("Relative humidity of exit air is 100 per cent.")

t_wb=20; //0C
disp("Wet bulb temperture=")
disp(t_wb)
disp("0C")

p_v=0.0234; //bar
p_vs=p_v;
t_db2=20; //0C
h_g2=2538.1; //kJ/kg
t_dp2=t_db2;

W2=0.622*p_v/(p_t-p_v);
h_vapour=h_g2 + 1.88*(t_db2 - t_dp2);
h2=cp*t_db2+W2*h_vapour;

T=308; //K
V=120; //m^3

W=W1-W2; //Weight of water vvapour removed per kg of dry air 
h=h1-h2; //Heat removed per kg of dry air
m=(p_t-p_v)*10^5*V/R/T;


disp("(ii) Capacity of the cooling coil in tonnes of refrigeration")
C=m*(h1-h2)*60/14000;
disp("Capacity =")
disp(C)
disp("TR")


disp("(iii) Amount of water removed per hour")
Amt=m*(W1-W2)*60;
disp("Amount of water removed per hour=")
disp(Amt)
disp("kg/h")