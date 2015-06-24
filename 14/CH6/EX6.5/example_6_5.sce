//Chapter 6
//Example 6.5
//Page 147
//ABCtransformer
clear;clc;

//Given
P_AB = 10e6;
V_AB_lt = 13.8e3;
V_AB_ht = 138e3;
x_AB = %i*0.1;
P_BC = 10e6;
V_BC_lt = 69e3;
V_BC_ht = 138e3;
x_BC = %i*0.08;
P_base_B = 10e6;
V_base_B = 138e3;
Z_L = 300;
V_load = 66e3;

//Calculations
V_base_A = (V_AB_lt/V_AB_ht)*V_base_B;
V_base_C = (V_BC_lt/V_BC_ht)*V_base_B;
base_impedance_C = (V_base_C)^2 / P_BC;
Z_L_pu = Z_L / base_impedance_C;

//impedance diagram is shown in the xcos file
V_load_pu = V_load / V_base_C;
I_L_pu = V_load_pu / Z_L_pu;
voltage_input = (I_L_pu * (x_AB + x_BC)) + V_load_pu;
voltage_regulation = (abs(voltage_input)-abs(V_load_pu))*100/abs(V_load_pu);

printf("\n\n Voltage regulation = %.2f percent \n\n",voltage_regulation)