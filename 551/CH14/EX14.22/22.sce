clc
h2=183.2; //kJ/kg
h3=222.6; //kJ/kg
h4=84.9; //kJ/kg

v2=0.0767; //m^3/kg
v3=0.0164; //m^3/kg
v4=0.00083; //m^3/kg

V=1.5*1000*10^(-6); //Piston displacement volume m^3/revolution
n_vol=0.80;

disp("(i) Power rating of the compressor (kW)")
discharge=V*1600*n_vol; //Compressor discharge
m=discharge/v2;

P=m/60*(h3-h2); //kW
disp("Power =")
disp(P)
disp("kW")


disp("(ii) Refrigerating effect =")
RE=m/60*(h2-h4);
disp(RE)
disp("kW")