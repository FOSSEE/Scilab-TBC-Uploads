//Chapter 3
//Example 3.6
//ParallelCircuit
//Page 63
clear;clc;
//Example 3.6

//Given
f = 60;//in Hz

//From Table A.1
D_s = 0.0229 //in ft

//Distances from given figure 3.15
d_a_c = 18;d_c_a = d_a_c;d_b_b = 21;
d = 10;//distance between conductors
d_a_b = sqrt(d^2 + (d_b_b - 19.5)^2);
d_a_b1 = sqrt(d^2 + (d_b_b - 1.5)^2);
d_aa1_actual = sqrt((d * 2)^2 + d_a_c^2);
d_bb1_actual = d_b_b;
d_cc1_actual = d_aa1_actual;
d_aa1_pos = sqrt(d_aa1_actual * D_s);
d_bb1_pos = sqrt(d_bb1_actual * D_s);
d_cc1_pos = sqrt(d_cc1_actual * D_s)

//GMD's between phases
D_p_ab = ((d_a_b * d_a_b1)^(2*1/4));//in ft
D_p_bc = D_p_ab;
D_p_ca = (((d*2) * d_c_a)^(2*1/4));//in ft
D_eq = (D_p_ab * D_p_bc * D_p_ca)^(1/3);//in ft
printf("\n\n Equivalent GMD = %.1f ft \n\n",D_eq)

//GMR
D_p_s = (d_aa1_pos * d_bb1_pos * d_cc1_pos)^(1/3);
printf("\n\n GMR = %.3f ft \n\n",D_p_s)

//Inductance
L = 2e-7 * log(D_eq / D_p_s);
X_L = 2 * %pi * f * L * 1609;//multiplication by 1609 is to convert to ohm/mi

printf("\n\n The Inductive reactance = %.3f ohm/mi/phase \n\n",X_L)