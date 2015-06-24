//Engineering and Chemical Thermodynamics
//Example 8.13
//Page no :396

clear ; clc ;
//Given 
P = 300 ; //[bar]
V_bar_inf_N2 = 3.3 * 10^-5 ;
R = 8.314 ;
T = 298 ; //[K]
y_N2 = 1 ; // At 25*C vapour pressure of water is small
H_N2_1 = 87365 ; //[bar]
P_c = 33.8 ; //[bar]
T_c = 126.2 ;// [K]
w = 0.039 ; // From Appendix A.1 
log_w_0 = 0.013 ;
log_w_1 = 0.210 ;
H_N2_300 = H_N2_1 * exp((V_bar_inf_N2 * (P -1) * 10^5 )/ (R * T)) ;

k = log_w_0 + w * log_w_1 ;
sai_N2 = 10^k ;
x_N2 = y_N2 * sai_N2 * P / H_N2_300 ;

disp(" Example: 8.13   Page no : 396") 
printf("\n     Solubility of N2 in water = %.5f",x_N2) ;