clc,clear
printf('Example 2.24\n\n')

R_t=1 //R_t = R_se + R_a
V_1= 230
N_1=300,N_2=375
I_1=15, I_a1=I_1

//T (prop.) I_a^2  and T (prop.) N_2....therefore I_a^2 (prop.) N^2
I_a2=I_a1 *(N_2/N_1)
E_b1 = V_1 - I_a1*(R_t)

//N (prop.) E_b/I_a
E_b2= E_b1*(I_a2/I_a1)*(N_2/N_1)
V_2=E_b2 + I_a2* (R_t)  //because E_b2 = V_2 - I_a2*(R_a+R_se)
printf('Voltage supply needed = %.4f V',V_2)
