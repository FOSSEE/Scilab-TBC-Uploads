//Chapter 11
//Example 11.2
//Page 285
//sequence
clear;clc;

//Give
V_ab = 0.8 * (cos(82.8 * %pi /180) + %i * sin(82.8 * %pi / 180));
V_bc = 1.2 * (cos(-41.4 * %pi /180) + %i * sin(-41.4 * %pi / 180));
V_ca = 1 * (cos(180 * %pi /180) + %i * sin(180 * %pi / 180));
a = 1 * (cos(120 * %pi / 180) + %i * sin(120 * %pi / 180));

//Symmetrical components of line voltage
//Since neutral connection is absent zero sequence components are absent
V_ab1=(1/3)*(V_ab+a*V_bc+a^2*V_ca);
V_ab2=(1/3)*(V_ab+a^2*V_bc+a*V_ca);

V_a1 = V_ab1 * (cos(-30 * %pi / 180) + %i * sin(-30 * %pi / 180));
V_a2 = V_ab2 * (cos(30 * %pi / 180) + %i * sin(30 * %pi / 180));

r = 1 * (cos(0) + %i * sin(0));

I_a1 = V_a1 / r;
I_a2 = V_a2 / r;

V_A1 = -1 * %i * V_a1 ;
V_A2 = %i * V_a2 ;
V_A = V_A1 + V_A2;

V_B1 = a^2 * V_A1;
V_B2 = a * V_A2;
V_B = V_B1 + V_B2;

V_C1 = a * V_A1;
V_C2 = a^2 * V_A2;
V_C = V_C1 + V_C2;

V_AB = V_A - V_B;
V_BC = V_B - V_C;
V_CA = V_C - V_A;

I_A = V_A / r;
I_B = V_B / r;
I_C = V_C / r;

disp('Line-neutral voltages')
printf("\n V_AB = %.2f /_%.2f per unit",abs(V_AB),atan(imag(V_AB),real(V_AB))*180/%pi)
printf("\n V_BC = %.2f /_%.2f per unit",abs(V_BC),atan(imag(V_BC),real(V_BC))*180/%pi)
printf("\n V_CA = %.2f /_%.2f per unit \n\n",abs(V_CA),atan(imag(V_CA),real(V_CA))*180/%pi)

disp('Line-line voltages')
printf("\n V_AB = %.2f /_%.2f per unit",abs(V_AB)/sqrt(3),atan(imag(V_AB),real(V_AB))*180/%pi)
printf("\n V_BC = %.2f /_%.2f per unit",abs(V_BC)/sqrt(3),atan(imag(V_BC),real(V_BC))*180/%pi)
printf("\n V_CA = %.2f /_%.2f per unit \n\n",abs(V_CA)/sqrt(3),atan(imag(V_CA),real(V_CA))*180/%pi)

disp('Line currents')
printf("\n I_A = %.2f /_%.2f per unit",abs(I_A),atan(imag(I_A),real(I_A))*180/%pi)
printf("\n I_B = %.2f /_%.2f per unit",abs(I_B),atan(imag(I_B),real(I_B))*180/%pi)
printf("\n I_C = %.2f /_%.2f per unit \n\n",abs(I_C),atan(imag(I_C),real(I_C))*180/%pi)