clc,clear
printf('Example 2.19\n\n')

V=110
P=4
R_a = 0.1,R=0.01  //A resistance of 0.01 ohms
R_se=R+R

//case(i)
I_1=50, I_a1=I_1
N_1=700
E_b1 = V -I_a1*(R_a + R_se)

//T (prop.) phi*I_a   from torque equation                                     (1)

//phi_1 (prop.) I_a1                                                           (2)
//case(ii) when I_a2 gets divided to half
//phi_2 (prop.) I_a2/2                                                         (3)

//combining (1)(2)(3) and T1=T2
I_a2 = sqrt(2*I_a1^2)
R_se_eqvt=(R*R)/(R+R)   //Equavalent of parallel combination
E_b2 = V - I_a2*R_a - I_a2* R_se_eqvt

//Using speed equation N (prop.) E_b / phi  and using (2) and (3)
N_2 = N_1 *( E_b2/E_b1) *(I_a1/(I_a2/2))
printf('Speed after reconnection = %.3f r.p.m\n\n',N_2)
