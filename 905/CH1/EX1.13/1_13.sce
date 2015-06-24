clear;
clc;

// Illustration 1.13
// Page: 36

printf('Illustration 1.13 - Page:36 \n\n');
// Solution

//*****Data*****
// acetic acid-1   water-2   ethyl alcohol-3
T = 298; // [K]
// The data required data for water at 298 K
u_2 = 0.894; // [cP]
V_c1 = 171; // [cubic cm/mole]
// From equation 1.48
V_b1 = 62.4; // [cubic cm/mole]
// Substituting in equation (1.53)
// the infinite dilution diffusion coefficient of acetic acid in water at 298 K
E = (9.58/V_b1)-1.12;
D_abo12 = (1.25*10^-8)*(((V_b1)^-.19)-0.292)*(T^1.52)*(u_2^E); // [square cm/s]


// Data for acetic acid
T_b1 = 390.4; // [K]
T_c1 = 594.8; // [K]
P_c1 = 57.9; // [bar]
V_c1 = 171; // [cubic cm/mole]
M_1 = 60; // [gram/mole]

// Data for ethanol
T_b3 = 351.4; // [K]
T_c3 = 513.9; // [K]
P_c3 = 61.4; // [bar]
V_c3 = 167; // [cubic cm/mole]
M_3 = 46; // [gram/mole]
u_3 = 1.043; // [cP]

// Using the Hayduk and Minhas correlation for nonaqueous solutions

// According to restriction 3 mentioned above, the molar volume of the acetic acid to be used in equation (1.54) should be
V_b1 = V_b1*2; // [cubic cm/mole]
// The molar volume of ethanol is calculated from equation (1.48)
V_b3 = 60.9; // [cubic cm/mole]


// For acetic acid (1)
T_br1 = T_b1/T_c1; // [K]
// Using equation 1.55 
alpha_c1 =  0.9076*(1+((T_br1)*log(P_c1/1.013))/(1-T_br1));
sigma_c1 = (P_c1^(2/3))*(T_c1^(1/3))*(0.132*alpha_c1-0.278)*(1-T_br1)^(11/9); // [dyn/cm]

// For ethanol (3)
T_br3 = T_b3/T_c3; // [K]
// Using equation 1.55 
alpha_c3 =  0.9076*(1+((T_br3*log(P_c3/1.013))/(1-T_br3)));
sigma_c3 = (P_c3^(2/3))*(T_c3^(1/3))*(0.132*alpha_c3-0.278)*(1-T_br3)^(11/9); // [dyn/cm]

// Substituting in equation 1.54
D_abo13 = (1.55*10^-8)*(V_b3^0.27)*(T^1.29)*(sigma_c3^0.125)/((V_b1^0.42)*(u_3^0.92)*(sigma_c1^0.105));

// The viscosity of a 40 wt% aqueous ethanol solution at 298 K is u_mix = 2.35 cP
u_mix = 2.35; // [cP]
// The solution composition must be changed from mass to molar fractions following a procedure similar to that illustrated in Example 1.2
// Accordingly, a 40 wt% aqueous ethanol solution converts to 20.7 mol%.
// Therefore mole fraction of ethanol (x_3) and water (x_2) 

x_3 = 0.207;
x_2 = 1-x_3;
// Using equation 1.62
D_1eff = ((x_2*D_abo12*(u_2^0.8))+(x_3*D_abo13*(u_3^0.8)))/(u_mix^0.8);
printf("The diffusion coefficient of acetic acid at very low concentrations diffusing into a mixed solvent containing 40.0 wt percent ethyl alcohol in water at a temperature of 298 K is %e square cm/s\n\n",D_1eff); 

// The experimental value reported by Perkins and Geankoplis (1969) is 
D_1exp = 5.71*10^-6; // [square cm/s]
percent_error = ((D_1eff-D_1exp)/D_1exp)*100; // [%]
printf("The error of the estimate is %f\n",percent_error);