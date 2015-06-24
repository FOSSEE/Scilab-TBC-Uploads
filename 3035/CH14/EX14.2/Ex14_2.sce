
// Variable Declaration
I_f_A = 6000.0      //3-phase fault current of substation A(A)
I_f_B = 5000.0      //3-phase fault current of substation B(A)
I_f_C = 3000.0      //3-phase fault current of substation C(A)
I_f_D = 2000.0      //3-phase fault current of substation D(A)
I_L_max = 100.0     //Maximum load cuurent(A)
T = 0.5             //Operating time of breakers(sec)
 

I_set = 1.0                         //Setting current(A)

// Calculation Section
I_L_maxD = I_L_max                  //Maximum load current at D(A)
CT_D = I_L_max/1                    //CT ratio
PSM_D = I_f_D/(CT_D*I_set)          //Plug setting multiplier
TMS_D = 0.1                         //Time multiplier setting
T_D = 0.14*TMS_D/(PSM_D**0.02-1)    //Time of operation(sec)

I_L_maxC = I_L_max+I_L_maxD         //Maximum load current at C(A)
CT_C = I_L_maxC/1                   //CT ratio
PSM_C = I_f_C/(CT_C*I_set)          //Plug setting multiplier
T_C = T_D+T                         //Minimum time of operation(sec)
TMS_C = T_C*(PSM_C**0.02-1)/0.14    //Time multiplier setting

I_L_maxB = I_L_max+I_L_maxC         //Maximum load current at B(A)
CT_B = I_L_maxB/1                   //CT ratio
PSM_B = I_f_B/(CT_B*I_set)          //Plug setting multiplier
T_B = T_C+T                         //Minimum time of operation(sec)
TMS_B = T_B*(PSM_B**0.02-1)/0.14    //Time multiplier setting

I_L_maxA = I_L_max+I_L_maxB         //Maximum load current at A(A)
CT_A = I_L_maxA/1                   //CT ratio
PSM_A = I_f_A/(CT_A*I_set)          //Plug setting multiplier
T_A = T_B+T                         //Minimum time of operation(sec)
TMS_A = T_A*(PSM_A**0.02-1)/0.14    //Time multiplier setting

// Result Section
printf('Relay A :')
printf('CT ratio = %.f/1' ,CT_A)
printf('PSM of R_A = %.1f' ,PSM_A)
printf('TMS of R_A = %.1f sec' ,TMS_A)
printf('\nRelay B :')
printf('CT ratio = %.f/1' ,CT_B)
printf('PSM of R_B = %.2f' ,PSM_B)
printf('TMS of R_B = %.1f sec' ,TMS_B)
printf('\nRelay C :')
printf('CT ratio = %.f/1' ,CT_C)
printf('PSM of R_C = %.1f' ,PSM_C)
printf('TMS of R_C = %.1f sec' ,TMS_C)
printf('\nRelay D :')
printf('CT ratio = %.f/1' ,CT_D)
printf('PSM of R_D = %.1f' ,PSM_D)
printf('TMS of R_D = %.2f sec' ,TMS_D)
