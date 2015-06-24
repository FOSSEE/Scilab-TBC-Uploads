clc,clear
printf('Example 2.29\n\n')

V=230,I_a0=3.3
R_a=0.3,R_sh=160 //armature and shunt field resistance 
I_L1=40,N_0=1000
E_b0 = V - I_a0*R_a
I_sh=V/ R_sh
I_a1 = I_L1 - I_sh
E_b1 = V - I_a1*R_a
phi1_by_phi0= 1- (4/100) //weakening by 4 percent 

N_1 = N_0 *(E_b1/E_b0)/(phi1_by_phi0)  //because N (prop.) E_b/phi
printf('Full load speed is %.4f rpm\n',N_1)
T_0 = E_b0*I_a0/(2*%pi*N_0/60)
T_1 = T_0*(I_a1/I_a0)*phi1_by_phi0   // because T (prop.) phi*I_a
printf('Full load developed torque is %.4f N-m',T_1)
