clc
p=7; //bar
h=2550; //kJ/kg
h_f=697.1; //kJ/kg
h_fg=2064.9; //kJ/kg
v_g=0.273; //m^3/kg
u_f=696; //kJ/kg
u_g=2573; //kJ/kg
x=(h-h_f)/h_fg;
disp("(i) Dryness fraction=")
disp(x)

v=x*v_g;
disp("(ii) Specific volume of wet steam =")
disp(v)
disp("m^3/kg")

u=(1-x)*u_f+ x*u_g;
disp("(iii) Specific internal energy of wet steam=")
disp(u)
disp("kJ/kg")