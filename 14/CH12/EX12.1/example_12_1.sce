//Chapter 12
//Page 308
//Example 12.1
//1phasetogroundfault
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
Ia1 = Ea / (Z0 + Z1 + Z2);
Ia2 = Ia1;Ia0 = Ia1;
Ia = 3 * Ia1;
I_b = P / (sqrt(3) * V);
Ia_1 = Ia * I_b;
printf("\n Base Current = %f A",I_b)
printf("\n Subtransient current in line a = -j%.0f A \n\n",abs(imag(Ia_1)))
//Symmetrical Components of voltage from point a to ground
Va1 = Ea - Ia1 * Z1;
Va2 = -Ia2 * Z2;
Va0 = -Ia0 * Z0;
disp('Symmetrical Components of voltage from point a to ground')
printf("\n Va1 = %.2f per unit",Va1)
printf("\n Va2 = %.2f per unit",Va2)
printf("\n Va0 = %.2f per unit \n\n",Va0)
//Line to ground voltages
Va = Va0 + Va1 + Va2;
Vb = Va0 + Va1 * a^2 + Va2 * a;
Vc = Va0 + Va2 * a^2 + Va1 * a;
disp('Line to ground voltages')
printf("\n Va = %.2f /_%.2f per unit",abs(Va),atan(imag(Va),real(Va))*180/%pi)
printf("\n Vb = %.2f /_%.2f per unit",abs(Vb),atan(imag(Vb),real(Vb))*180/%pi)
printf("\n Vc = %.2f /_%.2f per unit \n\n",abs(Vc),atan(imag(Vc),real(Vc))*180/%pi)
//Line to line voltages in per-unit are
Vab = Va - Vb;
Vbc = Vb - Vc;
Vca = Vc - Va;
disp('Line to line voltages in per-unit are')
printf("\n Vab = %.2f /_%.2f per unit",abs(Vab),atan(imag(Vab),real(Vab))*180/%pi)
printf("\n Vbc = %.2f /_%.2f per unit",abs(Vbc),atan(imag(Vbc),real(Vbc))*180/%pi)
printf("\n Vca = %.2f /_%.2f per unit \n\n",abs(Vca),atan(imag(Vca),real(Vca))*180/%pi)
//Line to line voltages in volts
Vab_1 = Vab * V / sqrt(3);
Vbc_1 = Vbc * V / sqrt(3);
Vca_1 = Vca * V / sqrt(3);
disp('Line to line voltages in volts')
printf("\n Vab = %.2f /_%.2f kV",abs(Vab_1)/1e3,atan(imag(Vab_1),real(Vab_1))*180/%pi)
printf("\n Vbc = %.2f /_%.2f kV",abs(Vbc_1)/1e3,atan(imag(Vbc_1),real(Vbc_1))*180/%pi)
printf("\n Vca = %.2f /_%.2f kV \n\n",abs(Vca_1)/1e3,atan(imag(Vca_1),real(Vca_1))*180/%pi)