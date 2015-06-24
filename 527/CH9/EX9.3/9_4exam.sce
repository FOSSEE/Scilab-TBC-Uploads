//Engineering and Chemical Thermodynamics
//Example 9.4
//Page no :447

clear ; clc ;
//Given 
del_gf_0_CH2O = -110.0 ; //[kJ/mol],From Appendix A.2 & A.3
del_gf_0_H2 = 0 ; //[kJ/mol],From Appendix A.2 & A.3
del_gf_0_CH4O = -162.0 ; //[kJ/mol],From Appendix A.2 & A.3
del_hf_0_CH2O = -116.0 ; //[kJ/mol],From Appendix A.2 & A.3
del_hf_0_H2 = 0 ; //[kJ/mol],From Appendix A.2 & A.3
del_hf_0_CH4O = -200.7 ; //[kJ/mol],From Appendix A.2 & A.3n_CH20 = 1 ;
n_H2 = 1 ;
n_CH4O = 1 ;
n_CH2O = 1 ;
T1 = 298 ;//[K]
T2 = 873 ; // [K]
R = 8.314 ; //[J/molK]
Del_A = 3.302 ;
Del_B = -4.776 * 10^-3 ;
Del_C = 1.57 * 10^-6 ;
Del_D = 0.083 * 10^5 ;  
//Solution (a)
del_g_rxn_298 = n_CH2O * del_gf_0_CH2O + n_H2 * del_gf_0_H2 - n_CH4O * del_gf_0_CH4O ;
K_298 = exp( - del_g_rxn_298 * 10^3 / (R * T1)) ;
disp(" Example: 9.4   Page no : 447") ;
printf("\n    (a) K_298 = %g \n\n   As the equilibrium constant is very small very little amount of formaldehyde will be formed .\n",K_298) ;

//Solution(b)
del_h_rxn_298 = (n_CH2O * del_hf_0_CH2O + n_H2 * del_hf_0_H2 - n_CH4O * del_hf_0_CH4O) * 10^3 ;//[J/mol]
K_873 = K_298 * exp((-del_h_rxn_298  * (1/T2 - 1/T1)) / R) ;
printf("\n    (b)\n            (i)  K_873 = %g \n\n",K_873) ;

//Solution(c)
x =  ( -del_h_rxn_298 / R + Del_A * T1 + Del_B / 2 * T1^2 + Del_C /3 * T1^3 - Del_D / T1 ) *(1/T2 - 1/T1) + Del_A * log(T2 / T1) + Del_B / 2 * (T2 -T1) + Del_C / 6 * (T2^2 -T1^2) + Del_D / 2 * (1/(T2^2) -1/(T1^2)) ;
K_873 = K_298 * exp(x) ;
printf("\n            (ii)  K_873 = %g \n\n",K_873) ;