clc
p_vs=0.0563; //bar
phi=0.2;
p_v=phi*p_vs;
p_t=1.0132; //bar

W1=0.622*p_v/(p_t-p_v);

disp("(i) Dew point temperature")
//
t_dp=8+(9-8)*(0.01126-0.01072)/(0.01150-0.01072);
disp("dew point temperature=")
disp(t_dp)
disp("0C")


disp("(ii) Relative humidity of the exit air :")
p_vs_wb=0.0170; //bar
p_vs=0.0234; //bar
t_db=20; //0C
t_wb=15; //0C

p_v=p_vs_wb - (p_t-p_vs_wb)*(t_db-t_wb)/(1527.4-1.3*t_wb);
W2=0.622*p_v/(p_t-p_v);

RH=p_v/p_vs;
disp("Relative humidity=")
disp(RH)

p_v=0.01126; //bar
R=287;
T=308; //K
V=150;

m=(p_t-p_v)*V*10^5/R/T;


disp("(iii) Amount of water vapour added to the air per minute")
amt=m*(W2-W1);
disp("Amount =")
disp(amt)
disp("kg/min")