clc
p2=0.75; //bar
p3=0.3; //bar
h1=3263.9; //kJ/kg
v1=0.307; //m^3/kg
s1=7.465; //kJ/kg K
T_s2=369.7; //K
h_g2=2670.9; //kJ/kg
s_g2=7.3954; //kJ/kg K
v_g2=1.869; //m^3/kg
h_f3=289.3; //kJ/kg
v_g3=5.229; //m^3/kg
cp=2.1;

disp("(i) Quality of steam at the end of expansion")
T_sup2=T_s2*(%e^((s1-s_g2)/cp));
t_sup2=T_sup2-273;
disp("t_sup2=")
disp(t_sup2)
disp("°C")

h2=h_g2+cp*(T_sup2-366.5);

disp("(ii) Quality of steam at the end of constant volume operation, x3 :")
v2=v_g2/T_s2*T_sup2;
v3=v2;
x3=v3/v_g3;
disp("x3=")
disp(x3)


disp("(iii) Power developed")
P=(h1-h2) + (p2-p3)*v2*100;
disp("P=")
disp(P)
disp("kW")


disp("(iv) Specific steam consumption =")
ssc=3600/P;
disp(ssc)
disp("kg/kWh")


disp("(v) Modified Rankine cycle efficiency =")
n_mR=((h1-h2)+(p2-p3)*v2*100)/(h1-h_f3);
disp(n_mR)