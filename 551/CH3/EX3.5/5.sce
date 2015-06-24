clc
m=4.4; //kg
p=6; //bar
t_sup=250; //0C
t_w= 30; //0C
c_ps=2.2; //kJ/kg
c_pw=4.18;
// At 6 bar, 250 0C; From steam tables
t_s=158.8; //0C
h_f=670.4; //kJ/kg
h_fg=2085; //kJ/kg
h_sup=h_f+h_fg+ c_ps*(t_sup-t_s);

disp("Amount of heat added per kg of water, Qw=")
Qw=c_pw*(t_w-0);
disp(Qw)

disp("Net amount of heat required to be supplied per kg, Q=")
Q=h_sup-Qw;
disp(Q)

disp("Total amount of heat required, Q_total=")
Q_total=m*Q;
disp(Q_total)
disp("kJ")