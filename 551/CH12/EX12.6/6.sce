clc
p1=35; //bar
x=1;
p2=0.2; //bar
m=9.5; //kg/s

//At 35 bar
h1=2802; //kJ/kg
h_g1=h1;
s_g1=6.1228; //kJ/kg K

//At0.26 bar
h_f=251.5; //kJ/kg
h_fg=2358.4; //kJ/kg
v_f=0.001017; //m^3/kg
s_f=0.8321; //kJ/kg
s_fg=7.0773; //kJ/kg K

disp("(i) The pump work")
W_pump=v_f*(p1-p2)*100; //kJ/kg
P=m*W_pump; //power required
disp("Power required to drive the pump")
disp(P)
disp("kW")


disp("(ii) The turbine work")

x2=(s_g1-s_f)/s_fg;
h2=h_f+x2*h_fg;

W_turbine=m*(h1-h2);
disp("Turbine work=")
disp(W_turbine)
disp("kW")


disp("(iii) The Rankine efficiency")
n_rankine=(h1-h2)/(h1-h_f);
disp("rankine efficiency=")
disp(n_rankine)


disp("(iv) The condenser heat flow :")
Q=m*(h2-h_f);
disp("The condenser heat flow=")
disp(Q)
disp("kW")


disp("(v) The dryness at the end of expansion=")
disp(x2)