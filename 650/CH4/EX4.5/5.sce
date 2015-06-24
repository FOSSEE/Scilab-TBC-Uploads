clc
Rho_full=800; // kg/m^3
v_full=1.8; // m/s
u_full=9*10^(-4);// Nm/s^2
Rho_model=1000; // kg/m^3
u_model=10^(-3); // Ns/m^2
d_full= 2;
d_model=1;
del_p_fmodel=4000; // N/m^2

v_model = (((Rho_full * v_full)/u_full)/(Rho_model/u_model))*(d_full/d_model);

del_p_f=del_p_fmodel*Rho_full*(v_full)^2/Rho_model/(v_model)^2;
disp("The pressure drop per unit length in the full-scale pipe is expected to be ")
disp(del_p_f)
disp("kN/m^2");