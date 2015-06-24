clc,clear
printf('Example 2.38\n\n')

V=250, N_1=1000
I_L1=25
R_a=0.2, R_sh=250 //armature and shunt field resistance
V_brush= 1 //voltage drop due to brushes

I_sh1 = V/R_sh
I_a1= I_L1 - I_sh1
E_b1= V- I_a1*R_a - 2 *V_brush

//when loaded
I_L2=50
I_sh2=I_sh1   //as flux weakensby armature reaction,shunt field current remains same 
I_a2= I_L2 - I_sh2
E_b2= V- I_a2*R_a - 2 *V_brush

phi2_by_phi1= 1- (3/100)  //weakens by 3 percent
N_2= N_1*(E_b2/E_b1)/ phi2_by_phi1   //N (prop.) E_b/phi
printf('New speed = %.3f rpm',N_2)
T_1= E_b1*I_a1/(2*%pi*N_1/60)
T_2= E_b2*I_a2/(2*%pi*N_2/60)
printf('\nTorque before field weakening = %.4f N-m',T_1)
printf('\nTorque after  field weakening = %.4f N-m',T_2)
