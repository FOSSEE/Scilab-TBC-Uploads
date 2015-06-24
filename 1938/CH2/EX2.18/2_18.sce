clc,clear
printf('Example 2.18\n\n')

V=200
R_a=0.5, R_se=0.2, R_x=0.2 //armature and series field resistance; extra resistance
I_a1=20, I_1=I_a1 , I_se1=I_a1
I_a2=20, I_2=I_a2
I_se2= I_2 *(R_x/(R_se+R_x))

E_b1 = V -I_a1*R_a - I_a1*R_se
E_b2 = V -I_a2*R_a - I_se2*R_se

phi2_by_phi1=70/100
N_1=1000
N_2=N_1*(E_b2/E_b1)  /phi2_by_phi1        //N (prop.) E_b/phi
printf('Required speed is %.2f r.p.m',N_2)
