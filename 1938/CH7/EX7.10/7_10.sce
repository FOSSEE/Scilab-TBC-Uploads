clc,clear
printf('Example 7.10\n')
printf('Answer might mismatch because of improper approximation done in book\n\n')

V_L=415
V_ph=V_L //due to delta connection
E_bline=520
R_a=0.5,X_s=4 //armature reactance and synchronous reactance
Z_s=complex(R_a,X_s) //synchronous impedance
theta=(%pi/180)*phasemag(Z_s) //phasemag returns angle in degrees,not radians

delta=theta //for maximum power
P_m_max = (E_bline*V_ph/abs(Z_s))- (E_bline^2/abs(Z_s))*cos(theta)
P_m_max_total= 3* P_m_max
fi_loss=1000  //frictional and iron losses
P_out_total = P_m_max_total-fi_loss  

HP_output= P_out_total/746 //converting watts to horse power
printf('HP output for maximum power output is %.2f HP\n',HP_output)

//from the phasor diagram
E_Rph=sqrt(  E_bline^2 + V_ph^2 -2*E_bline*V_ph*cos(delta) ) 
I_aph= E_Rph/abs(Z_s)
I_L=I_aph*sqrt(3)
printf('Line current is %f A\n',I_L)
cu_loss_total=3*(I_aph)^2*R_a  //total copper losses
input_power=P_m_max_total+ cu_loss_total
pf=input_power/(sqrt(3)*I_L*V_L)  //leading
printf('Power factor for maximum power output is %.2f leading \n',pf)

eta=100*P_out_total /input_power
printf('Efficiency for maximum power output is %.2f percent',eta)
