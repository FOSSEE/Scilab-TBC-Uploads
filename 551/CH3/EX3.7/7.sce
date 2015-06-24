clc
m=1000; //kJ/kg.K
p=16; //bar
x=0.9;
T_sup=653; //K
T_w=30; //0C
c_ps=2.2; //kJ/kg
c_pw=4.18;
// At 16 bar:From steam tables
T_s=474.4; //K
h_f=858.6; //kJ/kg
h_fg=1933.2; //kJ/kg

disp("(i) Heat supplied to feed water per hour to produce wet steam is given by")
H=m*[(h_f+x*h_fg)-c_pw*(T_w-0)];
disp(H)
disp("kJ")

disp("(ii) Heat absorbed by superheater per hour, Q=")
Q=m*[(1-x)*h_fg+c_ps*(T_sup-T_s)];
disp(Q)
disp("kJ")