//Chapter 4
//Example 4.4
//chap3ex6
//Page 85
clear;clc;

//Given
f = 60;//in Hz
k = 8.85e-12;//in F/m

//From example 3.6
D_eq = 16.1;//in ft
D_a_a1 = 26.9;D_b_b1 = 21;D_c_c1 = D_a_a1 ;//in ft

//From Table A.1
d = 0.680;//in inches

//calculations
r = d /(2*12);
D_p_sC = (sqrt(D_a_a1 * r) * sqrt(D_b_b1 * r) * sqrt(D_c_c1 * r))^(1/3);
C_n = 2 * %pi * k / log(D_eq / D_p_sC);
B_c = 2 * %pi * f * C_n * 1609;//1609 to convert from m to mi
printf("\n\n Capacitance = %.3fe-12 F/m \n\n",C_n * 1e12)
printf("\n\n Capacitive susceptance = %.2fe-6 mho per mi per phase to neutral",B_c * 1e6)