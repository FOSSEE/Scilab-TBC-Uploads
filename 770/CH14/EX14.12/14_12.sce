clear;
clc;

//Example - 14.12
//Page number - 474
printf("Example - 14.12 and Page number - 474\n\n");

//Given 
T = 307;//[K]
x_1 = 0.047;
x_2 = 1 - x_1;

// The subgroups in the  two components are
// Acetone (1) : 1 CH3, 1 CH3CO
// n-pentane (2) : 2 CH3, 3 CH2

//Group volume (Rk) and surface area (Qk) parameters of the subgroup are
k_CH3 = 1;
k_CH2 = 2;
k_CH3CO = 19;
Rk_CH3 = 0.9011;
Rk_CH2 = 0.6744;
Rk_CH3CO = 1.6724;
Qk_CH3 = 0.848;
Qk_CH2 = 0.540;
Qk_CH3CO = 1.4880;

// Interaction parameters of the subgroups in kelvin (K) are
a_1_1 = 0;
a_1_2 = 0;
a_1_19 = 476.40;
a_2_1 = 0;
a_2_2 = 0;
a_2_19 = 476.40;
a_19_1 = 26.76;
a_19_2 = 26.76;
a_19_19 = 0;

r_1 = 1*Rk_CH3 + 1*Rk_CH3CO;
r_2 = 2*Rk_CH3 + 3*Rk_CH2;
q_1 = 1*Qk_CH3 + 1*Qk_CH3CO;
q_2 = 2*Qk_CH3 + 3*Qk_CH2;

J_1 = r_1/(r_1*x_1+r_2*x_2);
J_2 = r_2/(r_1*x_1+r_2*x_2);
L_1 = q_1/(q_1*x_1+q_2*x_2);
L_2 = q_2/(q_1*x_1+q_2*x_2);
t_1_1 = exp(-a_1_1/T);
t_1_2 = exp(-a_1_2/T);
t_1_19 = exp(-a_1_19/T);
t_2_1 = exp(-a_2_1/T);
t_2_2 = exp(-a_2_2/T);
t_2_19 = exp(-a_2_19/T);
t_19_1 = exp(-a_19_1/T);
t_19_2 = exp(-a_19_2/T);
t_19_19 = exp(-a_19_19/T);

e_1_1 = 1*Qk_CH3/q_1;
e_2_1 = 0;
e_19_1 = (1*Qk_CH3CO/q_1);
e_1_2 = 2*Qk_CH3/q_2;
e_2_2 = 3*Qk_CH2/q_2;
e_19_2 = 0;

B_1_1 = e_1_1*t_1_1 + e_2_1*t_2_1 + e_19_1*t_19_1;
B_1_2 = e_1_1*t_1_2 + e_2_1*t_2_2 + e_19_1*t_19_2;
B_1_19 = e_1_1*t_1_19 + e_2_1*t_2_19 + e_19_1*t_19_19;
B_2_1 = e_1_2*t_1_1 + e_2_2*t_2_1 + e_19_2*t_19_1;
B_2_2 = e_1_2*t_1_2 + e_2_2*t_2_2 + e_19_2*t_19_2;
B_2_19 = e_1_2*t_1_19 + e_2_2*t_2_19 + e_19_2*t_19_19;

theta_1 = (x_1*q_1*e_1_1 + x_2*q_2*e_1_2)/(x_1*q_1 + x_2*q_2);
theta_2 = (x_1*q_1*e_2_1 + x_2*q_2*e_2_2)/(x_1*q_1 + x_2*q_2);
theta_19 = (x_1*q_1*e_19_1 + x_2*q_2*e_19_2)/(x_1*q_1 + x_2*q_2);

s_1 = theta_1*t_1_1 + theta_2*t_2_1 + theta_19*t_19_1;
s_2 = theta_1*t_1_2 + theta_2*t_2_2 + theta_19*t_19_2;
s_19 = theta_1*t_1_19 + theta_2*t_2_19 + theta_19*t_19_19;

// log(Y1_C) = 1 - J_1 + log(J_1) - 5*q_1*(1- (J_1/L_1) + log(J_1/L_1))
// log(Y2_C) = 1 - J_2 + log(J_2) - 5*q_2*(1- (J_2/L_2) + log(J_2/L_2))
Y1_C = exp(1 - J_1 + log(J_1) - 5*q_1*(1- (J_1/L_1) + log(J_1/L_1)));
Y2_C = exp(1 - J_2 + log(J_2) - 5*q_2*(1- (J_2/L_2) + log(J_2/L_2)));

// For species 1
summation_theta_k_1 = theta_1*(B_1_1/s_1) + theta_2*(B_1_2/s_2) + theta_19*(B_1_19/s_19);
summation_e_ki_1 = e_1_1*log(B_1_1/s_1) + e_2_1*log(B_1_2/s_2) + e_19_1*log(B_1_19/s_19);

// For species 2
summation_theta_k_2 = theta_1*(B_2_1/s_1) + theta_2*(B_2_2/s_2) + theta_19*(B_2_19/s_19);
summation_e_ki_2 = e_1_2*log(B_2_1/s_1) + e_2_2*log(B_2_2/s_2) + e_19_2*log(B_2_19/s_19);

// log(Y1_R) = q_1(1 - summation_theta_k_1 + summation_e_ki_1)
// log(Y2_R) = q_2(1 - summation_theta_k_2 + summation_e_ki_2)
Y1_R = exp(q_1*(1 - summation_theta_k_1 + summation_e_ki_1));
Y2_R = exp(q_2*(1 - summation_theta_k_2 + summation_e_ki_2));

// log(Y1) = log(Y1_C) + log(Y1_R)
// log(Y2) = log(Y2_C) + log(Y2_R)
Y1 = exp(log(Y1_C) + log(Y1_R));
Y2 = exp(log(Y2_C) + log(Y2_R));
 
printf(" The activity coefficients are Y1 = %f  and  Y2 = %f\n",Y1,Y2);
 

