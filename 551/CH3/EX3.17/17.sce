clc
// At 10 bar: From steam table for superheated steam
h_sup=3051.2; //kJ/kg
T_sup=573; //K
T_s=452.9; //K
v_g=0.194; //m^3/kg
v_sup=v_g*T_sup/T_s;
p=10; //bar

u1=h_sup-p*v_sup*10^2; //kJ/kg
disp("Internal energy of superheated steam at 10 bar= ")
disp(u1)
disp("kJ/kg")

// At 1.4 bar: From steam tables
p=1.4; //bar
h_f=458.4; //kJ/kg
h_fg=2231.9; //kJ/kg
v_g=1.236; //m^3/kg
x=0.8;
h=h_f+x*h_fg;
u2=h-p*x*v_g*10^2; //kJ
du=u2-u1;
disp("Change in internal energy=")
disp(du)
disp("kJ")