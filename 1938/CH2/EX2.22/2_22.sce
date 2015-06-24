clc,clear
printf('Example 2.22\n\n')

V=200,I_a1=30
R_t=1.5  //R_a + R_se
E_b1= V - I_a1*R_t
N2_by_N1=(60/100)

//T (prop.) I_a^2  and T (prop.) N_3....therefore I_a^2 (prop.) N^3
I_a2  = I_a1*sqrt(N2_by_N1^3)

//N (prop.) E_b/I_a
N2_by_N1
E_b2 = E_b1 *(I_a2/I_a1)*N2_by_N1
R_x= (V- E_b2)/I_a2 - R_t        //because E_b2= V - I_a2*(R_x+R_t)
printf('Additional resistance to be added in series with motor circuit = %.3f ohms',R_x)
