//Engineering and Chemical Thermodynamics
//Example 7.3
//Page no :311

clear ; clc ;
//Given 
P = 50 ; //[bar]
T = 25 + 273.2 ;//[K]
P_c = 48.7 ; //[bar] , From Appendix A.1 Table C.7 & C.8
T_c = 303.5 ; //[K] , From Appendix A.1 Table C.7 & C.8
w = 0.099 ; // From Appendix A.1 Table C.7 & C.8
log_w_0 = -0.216 ;// By interpolation
log_w_1 = -0.060 ;// By interpolation

X = log_w_0 + w * log_w_1 ;
sai_eth = 10^(X) ;
f_eth = sai_eth * P ;

disp(" Example: 7.3   Page no : 311") ;
printf("\n      Fugacity = %g bar",f_eth);
 