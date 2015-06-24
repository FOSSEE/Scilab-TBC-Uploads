clc;
d_A=0.025; // m
v_A=1.21; // m/s
d_B=0.05; // m
v_B=1.71; // m/s

Q_A=%pi*d_A^2*v_A/4;
disp("The rate of flow through parallel pipes A is ")
disp(Q_A);
disp("m^3/s")

Q_B=%pi*d_B^2*v_B/4;
disp("The rate of flow through parallel pipes B is ")
disp(Q_B);
disp("m^3/s")