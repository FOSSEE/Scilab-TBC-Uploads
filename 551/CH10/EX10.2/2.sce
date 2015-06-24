clc
t_db=290; //K
phi=0.6; //relative humidity
p_t=1.01325; //bar
p_vs=0.0194; //bar

p_v=phi*p_vs;

W=0.622*p_v/(p_t - p_v);
disp("Specific Humidity=")
disp(W)
disp("kg/kg of dry air")


t_dp=9 + (10-9)*(0.01164-0.01150)/(0.01230 - 0.01150); //By interpolation from steam tables
disp("dew point temperature =")
disp(t_dp)
 disp("0C")