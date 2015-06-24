clc,clear
printf('Example 3.1\n\n')

E=240
I_a=50 //armature current
R_a=0.1,R_sh=400 //armature and field resistance
N_1=900 ; N_2=1000 //initial and final speed in rpm

E_b1=E-I_a*R_a //back emf
I_sh1=E/R_sh //shunt field current

//N (prop.) E_b/phi (prop.) 1/phi; E_b is constant
phi1_by_phi2 = N_2/N_1  
//phi (prop.) I_sh as magnetisation curve is straight line
I_sh1_by_I_sh2=phi1_by_phi2
I_sh2=I_sh1/ I_sh1_by_I_sh2

R = (E/I_sh2)- R_sh //additional resistance in field circuit
printf('Additional resistance in field = %.2f ohms',R)

//error message
printf('\n\nAnswers do not match because of calculation error')
printf('\nR_sh is wrongly taken as 440 in last step while it is 400 ')
