clc,clear
printf('Example 3.13\n\n')

V=240
P_out=25*735.5  //output power in watts
R_a=0.14,R_sh=80 //resistance of armature and shunt field winding
brush_drop=1 //voltage drop across brush
I_L_FL=95 //input current at full load 
I_sh=V/R_sh
I_a_FL = I_L_FL - I_sh //armature current at full load

arm_cu_loss_FL = R_a*I_a_FL^2  //full load armature copper loss
field_cu_loss= R_sh*I_sh^2  //field copper loss
printf('(i)Armature and field copper losses are %.2f W and %.0f W respectively\n',arm_cu_loss_FL,field_cu_loss)
brush_cu_loss= 2*brush_drop*I_a_FL //brush contact copper loss
printf('(ii)Brush contact copper loss is %.0f W\n',brush_cu_loss)
E_b=V-I_a_FL*R_a - 2*brush_drop //back emf
gross_mech_P_dev= E_b*I_a_FL  //gross mechanical power developed
IFW_losses = gross_mech_P_dev - P_out  //iron friction and windage losses
printf('(iii)Core plus mechanical losses = %.1f W\n',IFW_losses+field_cu_loss+arm_cu_loss_FL)
eta=100*(P_out/(P_out + IFW_losses+ brush_cu_loss+field_cu_loss+arm_cu_loss_FL  ))
printf('(iv)Efficiency is %.2f percent',eta)
