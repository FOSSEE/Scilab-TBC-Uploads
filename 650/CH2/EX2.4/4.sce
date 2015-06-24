clc
g=9.8; //m/s^2
dz=0.2; //m ; dz1=z1-z2=z1-z2
rho=1000; //kg/m^3
dz1=2; //m ; dz1=z1-z_A
dz2=0; //m ; dz2=z1-z_B
dz3=-1.5; //m ; dz3=z1-z_C

v2=sqrt(2*g*dz);

v_A=v2;
v_B=v2;
v_C=v2;

p_A=rho*g*(dz1-v_A^2/2/g);
p_B=rho*g*(dz2-v_B^2/2/g);
p_C=rho*g*(dz3-v_C^2/2/g);

disp("Velocity at pt. A =")
disp(v_A)
disp("m/s")

disp("Velocity at pt. B =")
disp(v_B)
disp("m/s")

disp("Velocity at pt. C =")
disp(v_C)
disp("m/s")

disp("Pressure at pt. A =")
disp(p_A)
disp("kN/m^2")

disp("Pressure at pt. B =")
disp(p_B)
disp("kN/m^2")

disp("Pressure at pt. C =")
disp(p_C)
disp("kN/m^2")