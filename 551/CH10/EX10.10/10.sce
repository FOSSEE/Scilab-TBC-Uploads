clc
p_s=0.0206; //bar
p_t=1; //bar
p_s1=0.03782; //bar
W_2s=0.622*p_s/(p_t-p_s);

cp=1.005;
t_db2=18; //0C
t_db1=28; //0C

h_g2=2534.4; //kJ/kg
h_f2=75.6; //kJ/kg
h_g1=2552.6; //kJ/kg

W1=(cp*(t_db1-t_db2) + W_2s*(h_g2-h_f2))/(h_g1-h_f2);

p_v1=W1*p_t/(0.622+W1);

RH=p_v1/p_s1; //Relative humidity
disp("Relative humidity")
disp(RH)
