clc,clear
printf('Example 7.8\n\n')
printf('Answer in part(1) mismatched because of improper approximation in book\n\n')
 
V_L=3300, V_ph=V_L/sqrt(3)
R_a=2,X_s=18 //armature reactance and synchronous reactance
Z_s=complex(R_a,X_s)//synchronous impedance
theta=(%pi/180)*phasemag(Z_s) //phasemag returns angle in degrees not radians
E_bline=3800,E_bph=E_bline/sqrt(3)

//part(i)
P_m_max = (E_bph*V_ph/abs(Z_s))- (E_bph^2/abs(Z_s))*cos(theta)
printf('(i)Max total mechanical power developed that motor can develop is %.2f W per phase\n',P_m_max)

//part(ii)
//from phasor diagram, applying cosine rule to triangle OAB
E_Rph=sqrt(  E_bph^2 + V_ph^2 -2*E_bph*V_ph*cos(theta) ) 
I_aph= E_Rph/abs(Z_s)
printf('(ii)Current at max power developed is %.1f A\n',I_aph)

copper_loss=3* I_aph^2 * R_a
P_in_max_total=3 * P_m_max //input power at max power developed
total_P_in= P_in_max_total + copper_loss //total input power 
pf=total_P_in/(sqrt(3)*I_aph*V_L)
printf('Power factor at max power developed is %.3f leading',pf)
