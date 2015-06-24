clc,clear
printf('Example 1.11\n\n')

V_t=225 //voltage across winding
R_a=0.04 //armature resistance
R_sh=90 //shunt resistance
R_se=0.02//resistance of series field winding
I_L=75 //load current

//E -I_a*R_a=V_t+I_L*R_se 
I_sh=(V_t+I_L*R_se)/R_sh  //current through shunt field winding

I_a=I_L + I_sh  //armature current 
E=V_t+ I_a*R_a+I_L*R_se  //induced emf

printf('\nGenerated voltage is %.1f V',E)
