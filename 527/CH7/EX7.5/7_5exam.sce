//Engineering and Chemical Thermodynamics
//Example 7.5 
//Page no :319

clear ; clc ;
//Given 
P = 50 ; // [bar]
T = 25 + 273.2 ; //[K]
y_eth = 0.2 ;
y_pro = 0.8 ;
T_c_eth = 305.5 ; //[K],From Appendix A.1
T_c_pro = 370 ; //[K],From Appendix A.1
P_c_eth = 48.7 ; //[bar],From Appendix A.1
P_c_pro = 42.4 ; // [bar],From Appendix A.1
w_eth = 0.099 ;//From Appendix A.1
w_pro = 0.153 ;//From Appendix A.1 
log_w_0 = -0.579 ;// By double liner interpolation
log_w_1 = -0.406 ;// By double liner interpolation
T_pc = y_eth * T_c_eth + y_pro * T_c_pro ;
P_pc = y_eth * P_c_eth + y_pro * P_c_pro ;
w_mix = y_eth * w_eth + y_pro * w_pro ;
 
Pr = P / P_pc ;
Tr = T /T_pc ;
X = log_w_0 + w_mix * log_w_1 ;

sai = 10^(X) ;
f = sai * P ;

disp(" Example: 7.5   Page no : 319") ;
printf("\n     Fugacity co-efficient = %.2f\n\n        Fugacity = %.1f bar",sai,f); 