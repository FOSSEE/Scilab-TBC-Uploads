//Engineering and Chemical Thermodynamics
//Example 3.15
//Page no:141

clear ; clc ;
//Given 
n_turb = 0.85 ;
n_comp = 0.85 ;
W_cap_s_rev = -1120 ; //[kJ/kg]
h_cap_1 = 3625.3 ; //[kJ/kg]
h_cap_l = 417.44 ; //[kJ/kg]
W_cap_c_rev = 9.9 ; //[kJ/kg]

W_cap_s_act = n_turb * W_cap_s_rev ;
h_cap_2_act = W_cap_s_act + h_cap_1 ;
h_cap_3 = h_cap_l ;
W_cap_c_act = W_cap_c_rev / n_comp ;
h_cap_4_act = W_cap_c_act + h_cap_3 ;
W_cap_net = W_cap_s_act + W_cap_c_act ;
n_rank_act = (-W_cap_s_act - W_cap_c_act) / (h_cap_1 - h_cap_4_act) ;

disp(" Example: 3.15   Page no : 141") ;
printf("\n         W_cap_net = %.1f kJ/kg",W_cap_net) ;
printf("\n      Efficiency of Rankine cycle = %.3f %%",n_rank_act*100) ;
