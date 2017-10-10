// Example 12_17
clc;funcprot(0);
// Given data
T_m=-100;// °F
p_m=1500;// psia
R=1545.35;// ft.lbf/(lbmole.R)
v_ma=1.315;// ft^3/lb mole

// Calculation
// (a)For ideal gas mixture behavior,
v_m=(R*(T_m+459.67))/(p_m*144);// ft^3/lb mole
Error_a=((v_m-v_ma)/v_ma)*100;// % high
printf("Results: \n(a)v_m=%1.2f ft^3/mole \n   Percentage error=%2.1f percentage high",v_m,Error_a);
// (b)The Dalton compressibility factor
// From Table C.12a, we find
p_c_N_2=492;// psia
T_c_N_2=227.1;// R
p_c_CH_4=673;// psia
T_c_CH_4=343.9;// R
x_N_2=0.300;// The mole fraction for Nitrogen
x_CH_4=0.700;// The mole fraction for methane
vbar_m=1.51;// ft^3/lb mole
v_R_N_2=(vbar_m*p_c_N_2*144)/(x_N_2*R*T_c_N_2);// The reduced pseudospecific volume for Nitrogen
v_R_CH_4=(vbar_m*p_c_CH_4*144)/(x_CH_4*R*T_c_CH_4);// The reduced pseudospecific volume for methane
T_R_N_2=(T_m+459.67)/T_c_N_2;// The reduced temperature for Nitrogen
T_R_CH_4=(T_m+459.67)/T_c_CH_4;// The reduced temperature for methane
// From Figure 7.6 in Chapter 7, we find that, for these values
Z_D_N_2=0.91;// The Dalton compressibility factor for Nitrogen
Z_D_CH_4=0.39;// The Dalton compressibility factor for methane
Z_D_m=(x_N_2*Z_D_N_2)+(x_CH_4*Z_D_CH_4);// The Dalton compressibility factor for the mixture
vbar_m=(Z_D_m*(R*(T_m+459.67)))/(p_m*144);// ft^3/lbmole
Error_b=((vbar_m-v_ma)/v_ma)*100;// % high
printf("\n(b)vbar_m=%1.2f ft^3/mole \n   Percentage error=%2.1f percentage high",vbar_m,Error_b);
// (c) The Amagat compressibility factor
p_R_N_2=p_m/p_c_N_2;// The reduced pressure for Nitrogen
T_R_N_2=(T_m+459.67)/T_c_N_2;// The reduced temperature for Nitrogen
p_R_CH_4=p_m/p_c_CH_4;// The reduced pressure for methane
T_R_CH_4=(T_m+459.67)/T_c_CH_4;// The reduced temperature for nitrogen
Z_A_N_2=0.84;// The Amagat compressibility factor
Z_A_CH_4=0.35;// The Amagat compressibility factor
Z_Am=(x_N_2*Z_A_N_2)+(x_CH_4*Z_A_CH_4);// The Amagat compressibility factor
vbar_m=(Z_Am*R*(T_m+459.67))/(p_m*144);// ft^3/lbmole
Error_c=((vbar_m-v_ma)/v_ma)*100;// % high
printf("\n(c)vbar_m=%1.2f ft^3/mole \n   Percentage error=%2.1f percentage high",vbar_m,Error_c);
// (d) Using Kay’s law, Eqs. (12.39) and (12.40), we get
p_cm=(x_N_2*p_c_N_2)+(x_CH_4*p_c_CH_4);// psia
T_cm=(x_N_2*T_c_N_2)+(x_CH_4*T_c_CH_4);// R
p_Rm=p_m/p_cm;// The reduced pressure
T_Rm=(T_m+459.67)/T_cm;;// The reduced temperature
Z_Km=0.51;// The compressibility factor
vbar_m=(Z_Km*R*(T_m+459.67))/(p_m*144);// ft^3/lbmole
printf("\n(d)vbar_m=%1.2f ft^3/mole",vbar_m);
// The answer vary due to round off error
