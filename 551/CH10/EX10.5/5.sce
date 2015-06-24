clc

//For the air at 35 0C DBT and 60% R.H.
p_vs=0.0563; //bar; Corresponding to 35 0C from stem tables

phi=0.6;
p_t=1.0132; //bar
cp=1.005;
t_db=35; //0C
h_g=2565.5; //kJ/kg
m1=1; //kg
m2=2; //kg
m=m1+m2;

p_v=phi*p_vs;
W1=0.622*p_v/(p_t-p_v);

//Corresponding to 0.0388 bar, from steam tables
t_dp=26+(27-26)*(0.0338-0.0336)/(0.0356-0.0336);

h_vapour=h_g + 1.88*(t_db - t_dp);
h1=cp*t_db+W1*h_vapour;

//For the air at 20°C DBT and 13°C dew point temperature :
p_v=0.0150; //bar

W2=0.622*p_v/(p_t-p_v);
t_db=20; //0C
t_dp=13;
h_g=2538.1; //kJ/kg
h_vapour=h_g + 1.88*(t_db - t_dp);

h2=cp*t_db+W2*h_vapour;

//let enthalpy per kg of moist air be h
h=((m1*h1/(1+W1)) + (m2*h2/(1+W2)))/m;

//Let Mass of vapour/kg of moist air be M
M=(m1*W1/(1+W1) + m2*W2/(1+W2))/m;


//Let specific humidity be denoted by SH
SH=M/(1-M);
disp("Specific humidity =")
disp(SH)
disp("kg/kg of dry air")