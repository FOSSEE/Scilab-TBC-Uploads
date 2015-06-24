clc
p1=60; //bar
t1=450; //0C
p2=3; //bar
p3=0.07; //bar; p3=(760-707.5)/760*1.013

n_turbine=0.87;
n_boiler=0.86;
n_alt=0.94;
n_mech=0.97;

P=22500; //kW

h1=3300; //kJ/kg
h2=2607; //kJ/kg

h2a=h1-n_turbine*(h1-h2);
h3=2165; //kJ/kg

h3a=h2a-n_turbine*(h2a-h3);

h_f4=163.4; //kJ/kg
h_f5=561.4; //kJ/kg

disp("(i) The steam bled per kg of steam supplied to the turbine")
m=(h_f5-h_f4)/(h2a-h_f4);
disp("m=")
disp(m)
disp("kJ/kg")


disp("(ii) Steam generated per hour")
W=(h1-h2a) + (1-m)*(h2a-h3a); //Work developed per kg of steam in the turbine
W_act=P/n_alt/n_mech; //actual work 

steam=W_act/W*3600/1000; //tonnes/h
disp("Steam generated=")
disp(steam)
disp("tonnes/h")


disp("(iii) The overall efficiency of the plant")
P_avail=P*(1-0.09); //Net power available deducting pump power
Q=steam*1000*(h1-h_f5)/n_boiler/3600; //kW

n_overall=P_avail/Q
disp("n_overall=")
disp(n_overall)