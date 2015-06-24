//Engineering and Chemical Thermodynamics
//Example 6.9
//Page no :282

clear ; clc ;
//Given
x1 = 0.1 ;
x2 = 1- x1 ;
B11 = -910 ;
B22 = -1330 ;
B12 = -2005 ;
T = 333 ; //[K]
P = 10 * 10^5 ;
R = 8.314 ;
v1 = R * T /P * 10^6 + B11 ;//....E6.9A

disp(" Example: 6.9   Page no : 282") ;
printf("\n     v1 = %g cm^3/mol\n",v1)
V_bar_1 = (R * T / P) * 10^6+ (x1^2 + 2 * x1 * x2) * B11 + 2 * x2^2 * B12  - x2^2 * B22 ;//.....E6.9B
printf("\n     V_bar_1 = %g cm^3/mol\n",V_bar_1) ;
del_v_mix = x1 * x2 * (2 * B12 - B11 - B22) ;//.....E6.9C
printf("\n     del_v = %g cm^3/mol",del_v_mix);