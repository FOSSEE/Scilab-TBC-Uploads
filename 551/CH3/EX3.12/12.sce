clc
p1=10; //bar
p2=10; //bar
x1=0.85;
V1=0.15; //m^3
t_sup2=300; //0C
t_sup1=179.9; //0C
c_ps=2.2; //kJ/kg.K
v_g1=0.194; //m^3/kg
m=V1/(x1*v_g1);
h_fg1=2013.6; //kJ/kg
Q=(1-x1)*h_fg1+c_ps*(t_sup2-t_sup1);
Q_total=m*Q;

disp("Total heat supplied=")
disp(Q_total)
disp("kJ")

v_sup2=v_g1*(t_sup2+273)/(t_sup1+273)
W=p1*(v_sup2 - (x1*v_g1))*10^2;
Percentage=W/Q*100;

disp("Percentage of total heat supplied=")
disp(Percentage)
disp("%")