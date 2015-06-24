//Chapter 10
//Example 10.5
//Page 268
//breakerrating
clear;clc;
//Given
Pg = 25e6;Vg = 13.8e3;X11_dg = 0.15;
X11_dm = 0.20;Pmbase = 5e6;Vbasem = 6.9e3;
P_tr = 25e6;V_ht = 13.8e3;V_lt = 6.9e3;X_tr = 0.10;
Vbus_m = 6.9e3;
//the subtransient current in the fault
X11_dm1 = X11_dm * (P_tr / Pmbase);
Vf = 1;Xeqm =  1/(4*X11_dm1);Xeq_trg = X11_dg + X_tr;
Zth = Xeqm * Xeq_trg / (Xeqm + Xeq_trg);
I11_f = Vf / (%i * Zth);
Ibase_vbus = P_tr / (sqrt(3) * Vbus_m);
I11_f_a = abs(I11_f) * Ibase_vbus;
printf("\n Fault current in per unit = -j%.0f \n",abs(I11_f))
printf("\n Fault current in amperes = %.0f \n",I11_f_a)
//the subtransient current in breaker A
Ig_f = I11_f * Xeq_trg / (Xeqm + Xeq_trg);
Im_f = 0.25 * (I11_f - Ig_f);
I11_pu = Ig_f + 3 * Im_f;
I11_a = I11_pu * Ibase_vbus;
printf("\n Subtransient current through breaker A in per unit is -j%.0f \n",abs(I11_pu))
printf("\n Subtransient current through breaker A in amperes is %.0f \n",abs(I11_a))
//Symmetrical short-circuit interrupting current in the fault and in breaker A
X11_dm2 = 1.5 * X11_dm1;
Xeqm1 = X11_dm2 / 4;
Zth_c = (Xeqm1 * Xeq_trg) / (Xeqm1 + Xeq_trg);
Ig_f1 = Vf * Xeqm1 / (Zth_c * (Xeqm1 + Xeq_trg));
Im_f1 = (Vf * Xeq_trg) / (4 * Zth_c * (Xeqm1 + Xeq_trg));
I11_1pu = Ig_f1 + 3 * Im_f1;
I11_1a = I11_1pu * Ibase_vbus;
disp(I11_1a,'Symmetrical Short circuit current to be interrupted in A')
I11_pu_cb = Ig_f1 + 4 * Im_f1;
I11_a_cb = I11_pu_cb * Ibase_vbus;
disp(I11_a_cb,'The short circuit current rating of breakers must be atleast(in amperes)')
Vcb = 15.5e3;I_ic = 8900;k = 2.67;
Iic = I_ic * k;
Icb = Vcb * I_ic / Vbus_m;
printf("\n The required capability of %.0f A is well below 80 percent of %.0f A and the breaker is suitable with respect to the short-circuit current\n",abs(I11_a_cb),abs(Icb))
