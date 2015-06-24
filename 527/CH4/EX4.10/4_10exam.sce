//Engineering and Chemical Thermodynamics
//Example 4.10
//Page no :202

//Solution(a)
clear ; clc ;
T = 100 + 273 ; //[K]
P = 70 * 10^5 ; //[N/m^2]
P_c = 42.2 * 10 ^ 5 ;
T_c = 370 ; //[K]
w = 0.153 ;// Interpolating from table C.1 and C.2
z_0 = 0.2822 ;// Interpolating from table C.1 and C.2
z_1 = - 0.0670 ;// Interpolating from table C.1 and C.2
m = 20 * 10^3 ;//[g]
MW = 44 ; //[g/mol]
R = 8.314 ;

P_r = P / P_c ;
T_r = T / T_c ;
z = z_0 + w * z_1 ;
V = m / MW *z * R * T / P ;
disp(" Example: 4.10   Page no : 202") ;
printf("\n    (1)\n          Volume = %.4f m^3 \n\n", V )

//Solution(b)
T = 295 ;//[K]
n = 50 ; // [mol]
a = 0.42748 * R^2 * T_c^2.5 / P_c ;
b = 0.08664 * R * T_c / P_c ;
v = 0.1 ;
P = R * T / (v - b) - a / (T^0.5 * v * (v + b)) ;
x = P * n * 10^-6 ;
printf("\n    (2)\n          Pressure = %d MPa \n\n", x )

//Solution (c)
y1 = 0.4 ;
y2 = 1 - y1 ;
n = 50 ;
P_c = 48.7 * 10^5 ;//[N/m^2]
T_c = 305.5 ; //[K]
a1 = a ;
b1 = b ;
a2 = 0.42748 * R^2 * T_c^2.5 / P_c ;
b2 = 0.08664 * R * T_c / P_c ;

a_mix = y1^2 * a1 + 2 * y1 * y2 * sqrt(a1 * a2) + y2^2 * a2 ;
b_mix = y1 * b1 + y2 * b2 ;
P = R * T / (v - b_mix) - a_mix /(T^0.5 * v * (v + b_mix));
x = P * n * 10^-6 ;

printf("\n    (3)\n          Pressure = %.2f MPa \n\n", x )