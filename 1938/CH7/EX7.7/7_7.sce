clc,clear
printf('Example 7.7\n\n')

V_L=400
input_power=20*1000 
R_a=0,X_s=4 //armature reactance and synchronous reactance
Z_s=complex(R_a,X_s)   //synchronous impedance
theta=(%pi/180)*phasemag(Z_s)  //phase mag returns the angle in degrees and not raidians
V_ph=V_L/sqrt(3)
E_bline=550 //star connection
E_bph=E_bline/sqrt(3)

I_a_cos_phi=input_power/(sqrt(3)*V_L)  //product of I_a and cos(phi)
I_a_sin_phi= (   sqrt(E_bph^2- (abs(Z_s)*I_a_cos_phi)^2   )  -V_ph )/abs(Z_s)//from triangle DAB
phi=atan(I_a_sin_phi/I_a_cos_phi)
I_a=I_a_cos_phi/cos(phi)        

printf('Motor power fctor is %.3f Leading\n',cos(phi))
printf('Current drawn by the motor is %.2f A',I_a)
