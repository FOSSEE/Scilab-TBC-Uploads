clc,clear
printf('Example 3.4\n\n')

//given values
I_l1=20
V=400
N_1=500

//case 2
//N (prop.) E/phi  and E is same in both cases because of negligible losses
//phi (prop.) I_se  .. using I_se1= I_l1 and I_se2=I_l2/2
//N2_by_N1 = 2*I_l1/I_l2                                                      (i)

// Torque (prop.) square of speed
//T2_by_T1= (N2_by_N1)^2                                                      (ii)

//torque (prop.) flux*I_a
//T2_by_T1=I_l2^2/(2*I_l1*I_l1)                                               (iii)


//substituting values of (i) (iii) in (ii)
I_l2 = ((2*I_l1)^2  *  (2*I_l1*I_l1))^0.25
N_2 = N_1*((2*I_l1)/I_l2)   //from (i)

printf('Required current and speed of motor are %.2f A and %.1f r.p.m respectively',I_l2,N_2)
