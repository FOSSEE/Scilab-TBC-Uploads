// Example 15_9
clc;funcprot(0);
// Given data
h_R=-74.873;// MJ/kgmole CH4
h_f_N_2=0;// MJ/kgmole
h_f_CO2=-393.522;// MJ/kgmole
h_f_H2O_g=-241.827;// MJ/kgmole
h_f_H2O_l=-285.838;// MJ/kgmole
c_p_CO2=0.03719;// MJ/kgmole.K
c_p_H2O=0.03364;// MJ/kgmole.K
c_p_N2=0.02908;// MJ/kgmole.K
T=500;// °C
T_0=25;// °C

// Calculation
h_P=h_f_CO2+(2*h_f_H2O_g)+(7.52*h_f_N_2)+([c_p_CO2+(2.00*c_p_H2O)+(7.52*c_p_N2)]*(T-T_0));// MJ/kgmole CH4
q_r=h_P-h_R;// MJ/kgmole CH4
printf("\nThe heat of reaction of methane,qbar_r=%3.3f MJ/kgmole CH4",q_r);
