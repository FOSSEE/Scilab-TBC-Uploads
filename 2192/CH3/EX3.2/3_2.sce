clc,clear
printf('Example 3.2\n\n')

N_1=1000 //speed under normal working conditions
E=400 //applied voltage
R_se=1;R_d=2

I_a1=100//armature current
I_se1=100//series field current
I_L1=100//line current


//I_se2 = I_L2 * (R_d/(R_d+R_se))
//I_se2 = I_L2 * (2/3)

// N (prop.) 1/phi because back emf is constant
// N (prop.) 1/I_se  because phi(prop.) I_se 
//N_2 / N_1 = 150 /I_L2                                                       (i)

//Torque (prop.) I_a and I_a*flux
//I_a1= I_L1 ; I_a2=I_L2
//T_2 /T_1 = (2/3)*I_L2^2 / (I_L1*I_se1)                                     (ii)

//T (prop.) N^2                                                             (iii)


//substituting values from (i) and (ii) in (iii) and solving for I_L2
I_L2 =( I_L1*I_se1*(1/(R_d/(R_d+R_se)))*(I_se1*(1/(R_d/(R_d+R_se))))^2    )^0.25
I_se2=I_L2*(R_d/(R_d+R_se))

N_2= N_1*(I_se1/I_se2)
printf('Change in speed = %f rpm',N_2-N_1)
printf('\n\n The difference in answer has occured due to the rough approximation in the last step in book')
