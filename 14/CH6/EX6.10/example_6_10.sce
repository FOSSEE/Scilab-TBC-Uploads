//Chapter 6
//Example 6.10
//Page 159
//impedance
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
X11_m1_pu = pucalc(X11_m,V_m,V_base_m,P_base,P_m1);
X11_m2_pu = pucalc(X11_m,V_m,V_base_m,P_base,P_m2);
//Reactance diagram is given in xcos file
disp('Base Voltages in different parts of circuit')
printf("\n Generator voltage = %.0f kV",V_g/1e3)
printf("\n Line voltage = %.0f kV",V_base_line/1e3)
printf("\n Motor voltage = %.1f kV \n\n\n",V_base_m/1e3)

disp('Base reactance in different parts of circuit')
printf("\n Transformer 1 reactance = %.4f per unit",x_T1_base)
printf("\n Transformer 2 reactance = %.4f per unit",x_T2_base)
printf("\n Line reactance = %.4f per unit",x_line_pu)
printf("\n Motor 1 reactance = %.4f per unit",X11_m1_pu)
printf("\n Motor 2 reactance = %.4f per unit",X11_m2_pu)
//impedance diagram is shown in the xcos file
