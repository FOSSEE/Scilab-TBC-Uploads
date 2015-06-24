clc
p2=2; //bar
p3=1.1; //bar
IP=1;
m=12.8/3600; //kg/kWs
n_mech=0.8; //Mechanical efficiency
h1=3037.6; //kJ/kg
v1=0.169; //m^3/kg
s1=6.918; //kJ/kg K
t_s2=120.2; //0C
h_f2=504.7; //kJ/kg
h_fg2=2201.6; //kJ/kg
s_f2=1.5301; //kJ/kg K
s_fg2=5.5967; //kJ/kg K
v_f2=0.00106; //m^3/kg
v_g2=0.885; //m^3/kg
t_s3=102.3; //0C
h_f3=428.8; //kJ/kg
h_fg3=2250.8; //kJ/kg
s_f3=1.333; //kJ/kg K
s_fg3=5.9947; //kJ/kg K
v_f3=0.001; //m^3/kg
v_g3=1.549; //m^3/kg

x2=(s1-s_f2)/s_fg2;
h2=h_f2+x2*h_fg2;
v2=x2*v_g2+(1-x2)*v_f2;

disp("(i)Ideal work=")
W=(h1-h2) + (p2-p3)*v2*100; //kJ/kg
disp(W)
disp("kJ/kg")


disp("(ii) Rankine engine efficiency=")
n_rankine=W/(h1-h_f3);
disp(n_rankine)


disp("(iii) Indicated and brake work per kg")
W_indicated=IP/m;
disp("Indicated worK =")
disp(W_indicated)
disp("kJ/kg")

W_brake=n_mech*IP/m;
disp("Brake work =")
disp(W_brake)
disp("kJ/kg")

disp("(iv) Brake thermal efficiency=")
n_brake=W_brake/(h1-h_f3);
disp(n_brake)


disp("(v) Relative efficiency :")

n1=W_indicated/W; //on the basis of indicated work
disp("Relative efficiency on the basis of indicated work=")
disp(n1)

n2=W_brake/W; //on the basis of brake work
disp("Relative efficiency on the basis of brake work=")
disp(n2)