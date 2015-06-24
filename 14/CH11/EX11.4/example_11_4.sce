//Chapter 11
//Example 11.4
//Page 301
//zerosequence
//run clear command then execute dependancy file and then the source file
//dependency file is pucalc.sci
clc;

//Given
P_g = 300e6;
V_g = 20e3;
X11_g = 0.20;
l = 64;
V_m = 13.2e3;
P_m1 = 200e6;
P_m2 = 100e6;
X11_m = 0.20;
T1_P = 350e6;
T1_vht = 230e3;
T1_vlt = 20e3;
x_T1 = 0.10;
T2_1_P = 100e6;
T2_1_vht = 127e3;
T2_1_vlt = 13.2e3;
x_T2 = 0.10;
x_line = 0.5;//ohm per km
V_base = V_g;
P_base = P_g;
x0 = 0.05;
x_cl = 0.4;
x0_line = 1.5;//ohm per km

//Calculations
T2_P = 3*T2_1_P;
T2_vht = sqrt(3)*T2_1_vht;
T2_vlt = T2_1_vlt;
V_base_line = (T1_vht/T1_vlt)*V_base;
V_base_m = V_base_line * (T2_vlt/T2_vht);
z_line_base = (V_base_line)^2/P_base;
x_line_pu = x_line * l / z_line_base;
x0_g = x0;
x0_m1 = pucalc(x0,V_m,V_base_m,P_base,P_m1);
x0_m2 = pucalc(x0,V_m,V_base_m,P_base,P_m2);
Z_g = (V_g^2) / P_base;
Z_m = (V_base_m)^2 / P_base;
Zn_g = 3 * x_cl / Z_g;
Zn_m = 3 * x_cl / Z_m;
X_0 = x0_line * l / z_line_base;
printf("\n\n Generator X0 = %.2f per unit",x0_g)
printf("\n\n Motor 1 X0 = %.4f per unit",x0_m1)
printf("\n\n Motor 2 X0 = %.4f per unit",x0_m2)
printf("\n\n Generator base impedance = %.3f per unit",Z_g)
printf("\n\n Motor base impedance = %.3f per unit",Z_m)
printf("\n\n In generator 3Zn = %.3f per unit",Zn_g)
printf("\n\n In motor 3Zn = %.3f per unit",Zn_m)
printf("\n\n Transmission line X0 = %.4f per unit",X_0)
//zero-sequence diagram is shown in xcos file