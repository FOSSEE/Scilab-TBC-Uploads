clc,clear
printf('Example 2.20\n\n')

P=4, I_a1= 50, N_1=2000, V=230

//phi_1 is proportioanl to total ampere-turns produced by field coils
//phi_1 (prop.) I_a1*P*n (prop.) 200*n                                         (1)

//After reconnection, phi_2 proportional to ampere turns divided as follows
//phi_2 (prop.) [I_a2/2*2*n + I_a2/2*2*n]  (prop.) 2*n*I_a2                    (2)

// Dividing (1) and (2) , (phi_1/phi_2)=100 / I_a2                             (3)

//T (prop.) phi*I_a AND T (prop.) N^2                                          (4),(5)
//therefore N^2 (prop.) phi*I_a                                                (6)

//N (prop.) E_b/phi (prop.) 1/phi   ..
//Because drops across windings can be neglected, E_b1=E_b2
//therefore N (prop.) 1/phi                                                    (7)

//Using (7) and (6) phi^3 (prop.) 1/I_a                                        (8)

//combining (3) and (8)
I_a2 =  (50*100^3)^(1/4)    //new armature current
printf('New armature current= %.3f A\n',I_a2)
//combining (6) and (7)   , N^3 (prop.) I_a1
N_2=N_1 *(I_a2/I_a1)^(1/3)
printf('New motor speed =%.3f r.p.m',N_2)
