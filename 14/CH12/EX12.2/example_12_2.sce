//Chapter 12
//Page 311
//Example 12.2
//linetolinefault
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
Ia1 = Ea / (Z1 + Z2);
Ia2 = - Ia1;Ia0 = 0;
Ia = Ia1 + Ia2 + Ia0;
Ib = a^2 * Ia1 + a*Ia2 + Ia0;
Ic = -Ib;
I_b = P / (sqrt(3) * V);
printf("\n Base Current = %f A",I_b)
Ia_1 = Ia * I_b;
Ib_1 = Ib * I_b;
Ic_1 = Ic * I_b;
printf("\n Subtransient current in line a = %.0f A",Ia_1)
printf("\n Subtransient current in line b =  %.2f /_%.2f A",abs(Ib_1),atan(imag(Ib_1),real(Ib_1))*180 / %pi)
printf("\n Subtransient current in line c =  %.2f /_%.2f A \n\n",abs(Ic_1),atan(imag(Ic_1),real(Ic_1))*180 / %pi)
////Symmetrical Components of voltage from point a to ground
Va1 = Ea - Ia1 * Z1;
Va2 = Va1;
Va0 = 0;
disp('Symmetrical Components of voltage from point a to ground')
printf("Va1 = %.2f per unit",Va1)
printf("\n Va2 = %.2f per unit",Va2)
printf("\n Va0 = %.2f per unit \n\n",Va0)
//Line to ground voltages
Va = Va0 + Va1 + Va2;
Vb = Va0 + Va1 * a^2 + Va2 * a;
Vc = Vb;
disp('Line to ground voltages')
printf("Va = %.2f /_%.2f per unit",abs(Va),atan(imag(Va),real(Va))*180/%pi)
printf("\n Vb = Vc = %.2f per unit \n\n",Vb)
//Line to line voltages in per-unit are
Vab = Va - Vb;
Vbc = Vb - Vc;
Vca = Vc - Va;
disp('Line to line voltages in per-unit are')
printf("Vab = %.2f /_%.2f per unit",abs(Vab),atan(imag(Vab),real(Vab))*180/%pi)
printf("\n Vbc = %.2f per unit",Vbc)
printf("\n Vca = %.2f /_%.2f per unit \n\n",abs(Vca),atan(imag(Vca),real(Vca))*180/%pi)
//Line to line voltages in volts
Vab_1 = Vab * V / sqrt(3);
Vbc_1 = Vbc * V / sqrt(3);
Vca_1 = Vca * V / sqrt(3);
disp('Line to line voltages in volts')
printf("Vab = %.2f /_%.2f kV",abs(Vab_1)/1e3,atan(imag(Vab_1),real(Vab_1))*180/%pi)
printf("\n Vbc = %.2f  kV",Vbc_1)
printf("\n Vca = %.2f /_%.2f kV \n\n",abs(Vca_1)/1e3,atan(imag(Vca_1),real(Vca_1))*180/%pi)