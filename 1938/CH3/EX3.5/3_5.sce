clc,clear
printf('Example 3.5\n\n')

V=250
I_av=10
V_av=(240+220)/2 //average voltage across load
W_dash=V_av*I_av  //Power absorbed
t1=25,t2=6
R_sh=200,R_a=0.3//resistance of field winding and armature 

W=W_dash*t2/(t1-t2)   //Stray Losses
I_l=25 //Input current
I_sh=V/R_sh //current through field winding

I_a=I_l-I_sh   //Armature current
arm_cu_loss=R_a*I_a^2  //Armature copper losses
sh_cu_loss=R_sh*I_sh^2 // Shunt copper loss

Total_losses= arm_cu_loss + sh_cu_loss + W
Motor_input=V*I_l
Output=Motor_input- Total_losses
efficiency=Output*100/Motor_input
printf('Efficiency as motor at 25 A and 250 V is %.2f percent',efficiency)
