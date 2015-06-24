clc

disp("(i) Mass of spray water required")

//At 22 0c
p_vs=0.0264; //bar
phi_3=0.55;
p_t=1.0132; //bar

p_v3=phi_3*p_vs;
W3=0.622*p_v3/(p_t-p_v3);

//At 3 0C
p_vs1=0.0076; //bar
p_v1=p_vs1;

W1=0.622*p_v1/(p_t-p_v1);

R=287;
T_3=295; //K

v=R*T_3/(p_t-p_v3)/10^5;

m=(W3-W1)/v;
disp(" Mass of spray water required=")
disp(m)
disp("kg moisture/m^3")


disp("(ii) Temperature to which the air must be heated")
t_dp=12.5; //0C
cp=1.005;
t_db3=22; //0C
h_g3=2524; //kJ/kg
h_vapour3=h_g3 + 1.88*(t_db3 - t_dp);
W2=0.0047;
h_g2=2524; //kJ/kg
h4=41.87;

t_db2=(cp*t_db3 + W3*h_vapour3 -W2*h_g2 + 1.88*W2*t_dp - (W3-W2)*h4)/(cp-W2*1.88);
disp("t_db2=")
disp(t_db2)
disp("0C")