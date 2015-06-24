//Engineering and Chemical Thermodynamics
//Example 3.14
//Page no:140

clear ; clc ;
//Given 
P_1 = 10 * 10^6 ; // [N/m^2]
T_1 = 600 + 273 ; //[K]
T_H = T_1 ;
T_C = 100 + 273 ; //[K]
P_3 = 10 * 10^4 ; //[N/m^2]
P_4 = P_1 ;
h_cap_1 = 3625.3 ; // [kJ/kg],From steam table
S_cap_1 = 6.9028 ; //[kJ/kgK],From steam table
S_cap_2 = S_cap_1 ; //[kJ/kgK],From steam table
S_cap_v = 7.3593 ; //[kJ/kgK],From steam table
S_cap_l = 1.3025 ; //[kJ/kgK],From steam table
h_cap_l = 417.44 ;// [kJ/kg],From steam table
h_cap_v = 2675.5 ;// [kJ/kg],From steam table
V_cap_l = 10^-3 ; // [m^3/kg],From steam table

X = (S_cap_2 - S_cap_l) / (S_cap_v - S_cap_l);
h_cap_2 = (1 - X) * h_cap_l + X * h_cap_v ;
W_cap_s = h_cap_2 - h_cap_1 ;
h_cap_3 = h_cap_l ;

W_cap_c = V_cap_l * (P_4 - P_3) * 10^-3 ;
h_cap_4 = h_cap_3 + W_cap_c ;
W_net = W_cap_s + W_cap_c ; // [kJ/kg]

n_turb = ( -W_cap_s - W_cap_c) / (h_cap_1 - h_cap_4) ;
disp(" Example: 3.14   Page no : 140") ;
printf("\n    Efficiency of the Rankine cycle = %.3f %% \n\n",n_turb * 100 );

n_carnot = 1 - T_C / T_H ;
printf("    Efficiency of the Carnot cycle = %.3f %%\n\n",n_carnot * 100);

disp("   The Rankine efficiecy is lower than Carnot efficiency .")

