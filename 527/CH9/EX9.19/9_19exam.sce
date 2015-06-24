//Engineering and Chemical Thermodynamics
//Example 9.19
//Page no :472

clear ; clc
//Given
del_g_0_f_SiCl2 = - 216012 ; 
del_g_0_f_SiCl4 = - 492536 ;
del_g_0_f_SiCl3H = -356537 ;
del_g_0_f_SiCl2H2 = -199368 ;
del_g_0_f_SiClH3 = -28482 ;
del_g_0_f_SiH4 = -176152 ;
del_g_0_f_HCl = -102644 ;
del_g_0_f_H2 = 0 ;
del_g_0_f_Si = 0 ;
R = 8.314 ;
T = 1300 ; //[K]
Del_g_rxn_1 = del_g_0_f_SiCl2 + 2 * del_g_0_f_HCl - del_g_0_f_SiCl4 - del_g_0_f_H2 ;
Del_g_rxn_2 = del_g_0_f_SiCl3H + del_g_0_f_HCl -  del_g_0_f_SiCl4 - del_g_0_f_H2 ;
Del_g_rxn_3 = del_g_0_f_SiCl2H2 + del_g_0_f_HCl -  del_g_0_f_SiCl3H - del_g_0_f_H2 ;
Del_g_rxn_4 = del_g_0_f_SiClH3 + del_g_0_f_HCl -  del_g_0_f_SiCl2H2 - del_g_0_f_H2 ;
Del_g_rxn_5 = del_g_0_f_SiH4 + del_g_0_f_HCl -  del_g_0_f_SiCl3H - del_g_0_f_H2 ;
Del_g_rxn_6 = del_g_0_f_Si + 4 * del_g_0_f_HCl -  del_g_0_f_SiCl4 - 2 * del_g_0_f_H2 ;

M(1,1) = exp( - Del_g_rxn_1 / (R * T)) ;
M(2,1) = exp( - Del_g_rxn_2 / (R * T)) ;
M(3,1) = exp( - Del_g_rxn_3 / (R * T)) ;
M(4,1) = exp( - Del_g_rxn_4 / (R * T)) ;
M(5,1) = exp( - Del_g_rxn_5 / (R * T)) ;
M(6,1) = exp( - Del_g_rxn_6 / (R * T)) ;

S = [0.0763 ;0.1979 ;0.0067 ;0.0001 ;0.0000 ;-0.0512] ;
K_cal = [.00137 ;0.0457 ;0.00644 ;0.00181 ;0.000752 ;0.000509] ;
disp(" Example: 9.19   Page no : 472") ;
disp("       K_i              S        K_i_cal       K_i - K_i_cal") ;
for i = 1:6
    M(i,2) = S(i,1) ;
    M(i,3) = K_cal(i,1) ;
    M(i,4) = M(i,1) - M(i,3) ;
end
disp(M)
// Readers can refer figure E9.19 .