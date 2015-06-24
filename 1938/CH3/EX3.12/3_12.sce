clc,clear
printf('Example 3.12\n\n')

V=200
R_sh=240,R_a=0.1 //resistance of shunt field winding and armature
rotational_loss=236
I_L_FL=9.8  //full load line current
N=1450
I_sh=V/R_sh
I_a_FL = I_L_FL - I_sh
E_b= V- I_a_FL * R_a

//part(i)
gross_mech_P_dev= E_b*I_a_FL  //gross mechanical power developed
mech_P_dev= gross_mech_P_dev - rotational_loss //mechanical power developed
printf('(i)Gross mechanical power developed is %.2f W\n',gross_mech_P_dev )
printf('   Mechanical power developed is %.2f W\n',mech_P_dev )

//part(ii)
P_out=mech_P_dev 
printf('(ii)The power output is %.2f W\n',P_out)

//part(iii)
T_sh=P_out*60/(2*%pi*N)
T_L=T_sh
printf('(iii)Load torque is %.2f N-m\n',T_L)

//part(iv)
P_in=V*I_L_FL
eta=100*P_out/P_in
printf('(iv)Efficiency at full load is %.2f percent\n',eta)
