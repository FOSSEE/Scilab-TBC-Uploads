clc;
//from tables;


v_a=0.1115;//m^3/kg
u_a=2681;//kJ/kg
//steami s super heated
disp("internal energy of part a is:");
disp("kJ/kg",u_a);

p_b=20;//bar
u_b=2600;//kJ/kg
disp("internal energy of part b is:");
disp("kJ/kg",u_b);

v_d=0.4743;//m^3/kg
u_d=2881;//kJ/kg
disp("internal energy of part d is:");
disp("kJ/kg",u_d);

hf=763;//kJ/kg
h=2650;//kJ/kg
h_fg=2015;//kJ/kg
x=(h-hf)/h_fg;
ul=762;//kJ/kg
ug=2584;//kJ/kg
u=(1-x)*ul+x*ug;
disp("internal energy of part c is:");
disp("kJ/kg",u);
