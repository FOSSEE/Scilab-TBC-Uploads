clc,clear
printf('Example 3.3\n\n')

I_L1=40 //motor armature current
V=250 //rated voltage
R_se=0.5 // resistance of series motor
N_1=1500;N_2=1200 //initial and final speed

E_b1=  V - I_L1*(R_se+ 0) //since R_h is zero initially  
// because E_b = V - I_1*(R_se+ R_h)  back emf

T2_by_T1 = (N_2/N_1)^2 //load torqque varies as square of speed
//T (prop.) phi*I_L and I_L ;  therefore T (prop.) I_L^2
I_L2=sqrt(I_L1^2*(T2_by_T1)) 

//E_b (prop.) N*phi (prop.) N*I_L
E_b2 = E_b1* (N_2*I_L2)/(N_1*I_L1)
R_h =(V - E_b2)/I_L2 - R_se //because E_b = V - I_1*(R_se+ R_h)

printf('Resistance to be connected in series with armature circuit= %.4f ohms',R_h)
