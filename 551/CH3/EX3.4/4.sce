clc
m_w=2; //kg
t_w=25; //0C
p=5; //bar
x=0.9;
c_pw=4.18;
// at 5 bar; from steam tables
h_f=640.1; //kJ/kg
h_fg=2107.4; //kJ/kg
h=h_f+x*h_fg;
disp("Sensible heat associated with 1kg of water, Qw=")
Qw=c_pw*(t_w-0);
disp(Qw)
disp("kJ")
disp("Net quantity of heat to be supplies per kg of water, Q=")
Q=h-Qw;
disp(Q)
disp("kJ")

disp("Total amount of heat supplied, Q_total=")
Q_total=m_w*Q;
disp(Q_total)
disp("kJ")