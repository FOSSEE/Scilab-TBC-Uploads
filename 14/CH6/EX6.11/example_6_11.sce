//Chapter 6
//Example 6.11
//Page 160
//terminalvoltage
clear;clc;

//Given
P_g = 300e6;
V_g = 20e3;
X11_g = 0.20;
l = 64;
V_m = 13.2e3;
P_m1 = 120e6;
P_m2 = 60e6;
X11_m = 0.20;
T1_P = 350e6;
T1_vht = 230e3;
T1_vlt = 20e3;
x_T1 = 0.10;
T2_1_P = 100e6;
T2_1_vht = 127e3;
T2_1_vlt = 13.2e3;
x_T2 = 0.10;
x_line = 0.5;//onhm per km
V_base = V_g;
P_base = P_g;

//Calculations
T2_P = 3*T2_1_P;
T2_vht = sqrt(3)*T2_1_vht;
T2_vlt = T2_1_vlt;
V_base_line = (T1_vht/T1_vlt)*V_base;
V_base_m = V_base_line * (T2_vlt/T2_vht);
x_T1_base = x_T1 * (P_base/T1_P);
x_T2_base = x_T2 * (T2_vlt/V_base_m);
z_line_base = (V_base_line)^2/P_base;
x_line_pu = x_line * l / z_line_base;
P = P_m1 + P_m2;
P_pu = P / P_base;
V = V_m / V_base_m;
I = P_pu / V;
Vg = V + I * (%i * x_T1_base + %i * x_T2_base + %i * x_line_pu);
V_terminal = abs(Vg) * V_g;
printf("\n\n The generator terminal voltage = %.2f kV",V_terminal / 1e3)
