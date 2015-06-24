clear ;
clc;
// Example 9.2
printf('Example 9.2\n\n');
printf('Page No. 255\n\n');

//given
L_Br = 0.105;// Length of brickwork in m
L_Bl = 0.100;// Length of blockwork in m
L_C = 0.05;// Length of cavity in m
K_Br = 0.84;// Thermal conductivity of brickwork in W/m-K
K_Bl = 0.22;// Thermal conductivity of blockwork in W/m-K
K_C_in = 0.033;// Thermal conductivity of insulation in cavity in W/m-K
R_Ex = 0.055;// Resistance of external surface in W/m^2-K

//As R = L/K
R_Br = (L_Br/K_Br);// Resistance of brickwork in W/m^2-K
R_Bl = (L_Bl/K_Bl);// Resistance of blockwork in W/m^2-K
R_C = 0.18;// Resistance of cavity in W/m^2-K

//Without insulation of cavity
R_T = 0.938;// Total Resistance in W/m^2-K
// Thermal transmittance - U = (1/R_T)
U = (1/R_T);// in W/m^2-K
printf('The U-value of external wall is %.2f W/sq.m K \n',U)

//With insulation of cavity
//As R = L/K
R_C_in = (L_C/K_C_in);// Resistance of insulation in cavity in W/m^2-K
In = R_C_in - R_C;// Net increase in W/m^2-K
R_T_New = R_T + In;// New total resistance in W/m^2-K
// Thermal transmittance - U = (1/R_T)
U_New = (1/R_T_New);// in W/m^2-K
printf('The new  U-value is with foamed insulation %.3f W/sq.m K',U_New)
 
