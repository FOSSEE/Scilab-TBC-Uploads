clc,clear
printf('Example 2.11\n\n')

V=220
I_1=50, I_a1=I_1  //Currents before adding extra resistance
T_2_by_T_1 =0.5
R_t=0.15 //R_e + R_se =0.15

I_a2 =I_a1 * sqrt(T_2_by_T_1)  //Because T (prop.) I_a^2
E_b1=V-I_a1*(R_t) //induced emf before adding extra resistance
N_1=500,N_2=300 //speeds before and adding extra resistance
//N (prop.) E_b/phi (prop.) E_b/I_a
E_b2=E_b1 *(I_a2/I_a1)*(N_2/N_1) //induced emf after adding resistance
R_x= (V-E_b2)/I_a2 -R_t //because E_b2=V - I_a2*(R_a + R_se + R_x)
printf('Desired extrea resistance= %.4f ohms ',R_x)
