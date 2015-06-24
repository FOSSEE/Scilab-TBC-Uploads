clc
m=3; //kg
v1=0.75; //m^3/kg
v2=1.2363; //m^3/kg
x=v1/v2;
h_f=458.4; //kJ/kg
h_fg=2231.9; //kJ/kg
h_s=m*[h_f+x*h_fg]; //kJ
v_sup=1.55; //m^3/kg
p=2; //bar
t_s=120.2; //0C
t_sup=400; //0C
h=3276.6; //kJ/kg
U=1708; //kJ/kg
Degree=t_sup-t_s;
h_sup=m*h;

Q_added=h_sup - h_s;
disp("Heat added =")
disp(Q_added)
disp("kJ")

U_s=m*U;
U_sup=m*(h-p*v_sup*10^2);
dU= U_sup - U_s;
W=Q_added - dU;
disp("work done = ")
disp(W)
disp("kJ")