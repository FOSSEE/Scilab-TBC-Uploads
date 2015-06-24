//Engineering and Chemical Thermodynamics
//Example 7.12
//Page no :352

clear ; clc ;
//Given 
A_T1 = 1401 ; //[J/mol]
T1 = 10 + 273 ;//[K]
T2 = 60 + 273 ; //[K]
C = 3250 ;
A_T2_prev = 1143 ;//[J/mol]

A_T2 = T2 * (C *(1/T2 - 1/T1) + A_T1 / T1);
disp(" Example: 7.12   Page no : 352") ;
printf("\n     Value of A at 60*C = %f J/mol\n\n",A_T2) ;
x = (A_T2_prev - A_T2) / A_T2_prev* 100 ;
printf("\n      The values differ by = %g %%",x)

// The results given in the text book are wrong .