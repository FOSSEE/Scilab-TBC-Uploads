//Chapter 12
//Page 329
//Example 12.5
//busimpedancematrix
clear;clc;
//Given
V_bus1 = 4.16e3;
V_bus_2 = 600;
Vm = 600;
n_m = 0.895;
Pop_m = 6000;
X11_m = %i * 0.2;X_2_m = %i * 0.20;X_0_m = %i * 0.04;X_n_m= %i * 0.02;
Vtr_ht = sqrt(3) * 2400;Vtr_lt = 600;Ptr =3 * 2500e3;
X11_tr = %i * 0.10;
Pg = 7500e3;Vg = 4.16e3;
X11_g = %i * 0.10;X_2_g = %i * 0.10;X_0_g = %i * 0.05;X_n_g = %i * 0.05;
//At the time of fault
Pload = 5000;pf_load = 0.85;n_load = 0.88;
Vbase_sysbus = Vg;Pbase_sysbus = Pg;
Vbase_m = Vtr_lt;Pbase_m = Ptr;
Pin_m =(Pop_m * 0.746) * 1e3/ n_m;
X11_m_new = X11_m * Pbase_m / Pin_m;
X_2_m_new = X_2_m * Pbase_m / Pin_m;
X_0_m_new = X_0_m * Pbase_m / Pin_m;
X_n_m_new = 3 * X_n_m * Pbase_m / Pin_m;
X_n_g_new = 3 * X_n_g;
Y1 = zeros(2,2);Y2 = zeros(2,2);Y0 = zeros(2,2);
Y1(1,1) = 1/X11_g + 1/X11_m_new;Y2(1,1) = Y1(1,1);
Y1(1,2) = - 1 / X11_g;Y2(1,2) = Y1(1,2);
Y1(2,2) = 1/X11_g + 1/X_2_g;Y2(2,2) = Y1(2,2)
Y1(2,1) = Y1(1,2);Y2(2,1) = Y2(1,2);
Y0(1,1) = 1 / X_n_g_new;
Y0(2,2) = 1/X11_m + 1/X_2_g;
disp('Y_bus1 = Y_bus2 = ')
disp(Y2)
disp('Y_bus0 = ')
disp(Y0)
Z1 = inv(Y1);Z2 = inv(Y2);Z0 = inv(Y0);
disp('Z_bus1 = Z_bus2 = ')
disp(Z1)
disp('Z_bus0 = ')
disp(Z0)
Vf = 1 * (cos(0) + %i * sin(0));
If_bus1 = 3 * Vf / (Z1(1,1) + Z2(1,1) + Z0(1,1));
disp(If_bus1,'The current in fault on bus 1 in per unit is')
If_bus2 = 3 * Vf / (Z1(2,2) + Z2(2,2) + Z0(2,2));
disp(If_bus2,'The current in fault on bus 2 in per unit is')
Ia_1 =If_bus1 / 3;Ia_2 = Ia_1;Ia_0 = Ia_1;
Va1 = Vf - (Z1(2,1) * Ia_1);
Va2 = - Ia_2 * Z2(2,1);
Va0 = - Ia_0 * Z0(2,1);
disp('Sequence components of phase A in the order Va1,Va2,Va0 in per unit are')
disp(Va1);disp(Va2);disp(Va0)
VA1 = -%i *Va1;
VA2 = %i *Va2;
VA = VA1 + VA2;
a = 1 * (cos(120 * %pi / 180) + %i * sin(120 * %pi / 180));
VB = a^2 * VA1 + a * VA2;
VC = a * VA1 + a^2 * VA2;
disp('Currents in phases in the order VA,VB,VC in per unit are')
disp(VA);disp(VB);disp(VC)
