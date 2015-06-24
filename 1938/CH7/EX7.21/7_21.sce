clc,clear
printf('Example 7.21\n\n')

V_L=3300, V_ph=V_L/sqrt(3)
E_bline=3800, E_bph=E_bline/sqrt(3)

R_a=2,X_s=18 //armature resistance and synchronous reactance
Z_s=complex(R_a,X_s) //synchronous impedance
theta=(%pi/180)*phasemag(Z_s) //phasemag returns angle in degrees,not radians

//part(i)
P_m_max = (E_bph*V_ph/abs(Z_s))- (E_bph^2/abs(Z_s))*cos(theta)  //maximum total mechanical power
printf('(i)Maximum total mechanical power that the motor can develop is %.2f W per phase',P_m_max )
//part(ii)
delta=theta //for max P_m
E_Rph=sqrt(  E_bph^2 + V_ph^2 -2*E_bph*V_ph*cos(delta) ) 
I_aph= E_Rph/abs(Z_s)
printf('\n(ii)Current at maximum power developed is %.1f A',I_aph)
cu_loss_total = 3*I_aph^2*R_a  //total copper loss
P_m_max_total=3*P_m_max //total maximum total mechanical power
P_in_total = P_m_max_total+ cu_loss_total  //total input power

pf=P_in_total/(sqrt(3)*V_L*I_aph)
printf('\n    Power factor at maximum power developed is %.3f leading',pf)
