clc
m=1.5; //kg
p=5; //bar
x1=1;
x2=0.6;
p1=5*10^5; //N/m
// At 5 bar: From steam tables
t_s=151.8; //0C
h_f=640.1; //kJ/kg
h_fg=2107.4; //kJ/kg
v_g=0.375; //m^3/kg
v_g1=0.375*10^(-3);
h1=h_f+h_fg;
V=m*v_g;
u1=h1-p1*v_g1;
v_g2=V/m/x2; //m^3/kg

// From steam table corresponding to 0.625 m^3/kg
p2=2.9; //bar
disp("Pressure at new state =")
disp(p2)
disp("bar")

t_s=132.4; //0C
disp("Temperature at new state =")
disp(t_s)
disp("°C")
h_f2=556.5; //kJ/kg
h_fg2=2166.6; //kJ/kg
u2=(h_f2+x2*h_fg2)-p2*x2*v_g2*10^2;

Q=u2-u1; //heat transferred at constant volume per kg

disp("Total heat transfered,Q_total=")
Q_total=m*Q;
disp(Q_total)
disp("kJ")