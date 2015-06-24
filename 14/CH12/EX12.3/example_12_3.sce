//Chapter 12
//Page 314
//Example 12.3
//linetogroundfaultunloadedG
clear;clc;
//Given
P = 20e6;
V = 13.8e3;
P_b = 20e6;
V_b = 13.8e3;
Z1 = %i * 0.25;
Z2 = %i * 0.35;
Z0 = %i * 0.10;
a = 1 * (cos(120 * %pi / 180) + %i * sin(120 * %pi / 180));
//Calculations
Ea = V / V_b;
Ia1 = Ea / (Z1 + (Z2*Z0)/(Z2+Z0));
I_b = P / (sqrt(3) * V);
Va1 = Ea - Ia1 * Z1;
Va2 = Va1;Va0 = Va1;
Ia2 = - Va2 / Z2;
Ia0 = - Va0 / Z0;
Ia = Ia1 + Ia2 + Ia0;
Ib = a^2*Ia1 + a*Ia2 + Ia0;
Ic = a*Ia1 + a^2*Ia2 + Ia0;
In = 3 * Ia0;
Va = Va1 + Va2 + Va0;
Vb = 0;
Vc = 0;
disp('Line to ground voltages')
printf("Va = %.2f /_%.2f per unit",abs(Va),atan(imag(Va),real(Va))*180/%pi)
printf("\n Vb = Vc = %.0f per unit \n\n",Vb)
Vab = Va - Vb;
Vbc = Vb - Vc;
Vca = Vc - Va;
disp('Line to line voltages in per-unit are')
printf("Vab = %.2f per unit",Vab)
printf("\n Vbc = %.2f per unit",Vbc)
printf("\n Vca = %.2f per unit \n\n",Vca)
I_a1 = I_b * Ia;
I_b1 = I_b * Ib;
I_c1 = I_b * Ic;
I_n1 = I_b * In;
printf("\n Base Current = %f A",I_b)
printf("\n Subtransient current in line a = %.0f A",I_a1)
printf("\n Subtransient current in line b = %.0f /_%.2f A",abs(I_b1),atan(imag(I_b1),real(I_b1)) * 180 / %pi)
printf("\n Subtransient current in line c = %.0f /_%.2f A",abs(I_c1),atan(imag(I_c1),real(I_c1)) * 180 / %pi)
printf("\n Subtransient current in neutral = %.0f /_%.2f A \n\n",abs(I_n1),atan(imag(I_n1),real(I_n1)) * 180 / %pi)
Vab_1 = Vab * V / sqrt(3);
Vbc_1 = Vbc * V / sqrt(3);
Vca_1 = Vca * V / sqrt(3);
disp('Line to line voltages in volts')
printf("Vab = %.2f /_%.2f kV",abs(Vab_1)/1e3,atan(imag(Vab_1),real(Vab_1))*180/%pi)
printf("\n Vbc = %.2f  kV",Vbc_1)
printf("\n Vca = %.2f /_%.2f kV \n\n",abs(Vca_1)/1e3,atan(imag(Vca_1),real(Vca_1))*180/%pi)