clc
p=18; //bar
x=0.85;
h_f=884.6; //kJ/kg
h_fg=1910.3; //kJ/kg
v_g=0.110; //m^3/kg
u_f=883; //kJ/kg
u_g=2598; //kJ/kg
v=x*v_g;
disp("Specific volume of wet steam=")
disp(v)
disp("m^3/kg")

h=h_f+x*h_fg;
disp("Specific enthalpy of wet steam=")
disp(h)
disp("kJ/kg")
u=(1-x)*u_f+ x*u_g;
disp("Specific internal energy of wet steam =")
disp(u)
disp("kJ/kg")