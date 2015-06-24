//Chapter 12
//Page 321
//Example 12.4
//interconnected
clear;clc;
//Given
V_bus1 = 4.16e3;
V_bus_2 = 600;
Vm = 600;
n_m = 0.895;
Pop_m = 6000;
X11_m = 0.2;X_2_m = 0.20;X_0_m = 0.04;X_n_m= 0.02;
Vtr_ht = sqrt(3) * 2400;Vtr_lt = 600;Ptr =3 * 2500e3;
X11_tr = 0.10;
Pg = 7500e3;Vg = 4.16e3;
X11_g = 0.10;X_2_g = 0.10;X_0_g = 0.05;X_n_g = 0.05;
//At the time of fault
Pload = 5000;pf_load = 0.85;n_load = 0.88;
Vbase_sysbus = Vg;Pbase_sysbus = Pg;
Vbase_m = Vtr_lt;Pbase_m = Ptr;
Pin_m =(Pop_m * 0.746) * 1e3/ n_m;
printf("\n Input Rating of the single equivalent motor = %.0f kVA \n",Pin_m)
X11_m_new = X11_m * Pbase_m / Pin_m;
X_2_m_new = X_2_m * Pbase_m / Pin_m;
X_0_m_new = X_0_m * Pbase_m / Pin_m;
X_n_m_new = 3 * X_n_m * Pbase_m / Pin_m;
disp('For Motor')
printf("\nX11 = %.1f per unit\n X_2 = %.1f per unit\n X_0 = %0.2f per unit\n 3X_n = %.2f per unit\n",X11_m_new,X_2_m_new,X_0_m_new,X_n_m_new)
printf("\n The equivalent generator reactance from neutral to ground in the zero-sequence network = %.2f per unit\n",3*X_0_g)
Vf = 1 * (cos(0) + %i * sin(0));
Ibase_m = Pbase_m / (sqrt(3) * Vbase_m);
printf("\n Base current in motor circuit = %.0f \n\n",Ibase_m)
Iactual_m = 746 * Pload / (n_load * sqrt(3) * Vbase_m * pf_load);
magIa = Iactual_m / Ibase_m;
angleIa = - acos(0.85);
Ia_prefault = magIa * (cos(angleIa) + %i * sin(angleIa));
printf("\n Prefault current through line a = %.3f - j%.3f per unit\n\n",real(Ia_prefault),abs(imag(Ia_prefault)))
Eg_11 = 1;Em_11 = 1;
Z1 = ((%i * X11_g + %i * X_2_g) * (%i * X11_m_new)) / (%i * (X11_g + X_2_g + X11_m_new));
Z2 = Z1;Z0 = 3 * %i * X_0_g;
printf("\n\n Z1 = j%.2f per unit\n Z2 = j%.2f per unit\n Z0 = j%.2f per unit\n",abs(Z1),abs(Z2),abs(Z0))
Ia1 = Vf / (Z1 + Z2 + Z0);
Ia2 = Ia1;Ia0 = Ia1;
Ia_fault = 3 * Ia0;
printf("\n Current Ia in fault = -j%.3f per unit \n",abs(Ia_fault))
Ia1_tr = Ia1 * (%i * X11_m_new) / (%i * X11_m_new + %i * X11_g + %i * X_2_g);
Ia1_m = Ia1 * (%i * X11_g + %i * X_2_g ) / (%i *X11_m_new + %i * X11_g + %i * X_2_g);
a = 1 * (cos(120 * %pi / 180) + %i * sin(120 * %pi / 180));
A = [ 1 1 1; 1 a^2 a ; 1 a a^2];
Ia_tr = [ 0 ;Ia1_tr ;Ia1_tr];
I_tr = A * Ia_tr;
disp('Currents in the line at the fault from the transformer in the order Ia,Ib,Ic in per unit are')
disp(I_tr)
disp('Currents in the line at the fault from the transformer in the order Ia,Ib,Ic in A are')
disp(abs(I_tr) * Ibase_m)
Ia_m = [Ia1 ; Ia1_m ; Ia1_m];
I_m = A * Ia_m;
disp('Currents in the line at the fault from the motor in the order Ia,Ib,Ic in per unit are')
disp(I_m)
disp('Currents in the line at the fault from the motor in the order Ia,Ib,Ic in A are')
disp(abs(I_m) * Ibase_m)
I_A1 = -%i * Ia1_tr;I_A2 = %i * Ia1_tr;I_a0 = 0;
I_A = I_A1 + I_A2;
I_B1 = a^2 * I_A1;I_B2 = a * I_A2;
I_B = I_B1 + I_B2;
I_C1 = a * I_A1;I_C2 = a^2 * I_A2;
I_C = I_C1 + I_C2;
disp('Per Units currents in the order I_A,I_B,I_C in per unit are')
disp(I_A);disp(I_B);disp(I_C);
Ibase_ht = Ptr / (sqrt(3) * Vtr_ht);
disp('Per Units currents in the order I_A,I_B,I_C in A are')
disp(abs(I_A) * Ibase_ht);disp(abs(I_B) * Ibase_ht);disp(abs(I_C) * Ibase_ht);
disp('Under loaded conditions')
disp('Current from transformer to the fault phase a')
disp(Ia_prefault + Ia1_tr)
disp('Current from motor to the fault phase a')
disp(- Ia_prefault + Ia1_m)