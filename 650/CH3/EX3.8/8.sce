clc
u=0.1; // Ns/m^2
d=0.1; //m
R=0.05; // m
Rho=900; //kg/m^3

v_max=2; // m/s
v=v_max/2; // m/s

disp("At the pipe wall (r =R), therefore, the shear stress is");
Tw=-2*u*v_max/R;
disp(Tw);
disp("N/m^2");
disp("The negative sign indicates that the shear stress is in the opposite direction to flow.");

disp("pressure drop per metre length of pipe is");

del_p=4*u*v_max/R^2;
disp(del_p);
disp("N/m");