//Engineering and Chemical Thermodynamics
//Example 4.2
//Page no :176

clear ; clc ;
//Given //
C6_Ar_HCl_tab = 76 * 10^-60 ;//From table E4.2
C6_Ar_Ar_tab = 52 * 10^-60 ;//From table E4.2
C6_HCl_HCl_tab = 134 * 10^-60 ;//From table E4.2

C6_Ar_HCl_gmean = sqrt(C6_Ar_Ar_tab * C6_HCl_HCl_tab) ; //[erg/cm^6]
x = (C6_Ar_HCl_gmean - C6_Ar_HCl_tab) / C6_Ar_HCl_tab * 100 ;

disp(" Example: 4.2   Page no : 176") ;
printf("\n   The geometric mean is different from that in table E4.2 by %d %%",x)