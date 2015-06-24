clc,clear
printf('Example 7.15\n\n')

V_L=400, V_ph=V_L/sqrt(3)
Pole=6,f=50
R_a=0.2,X_s=3 //armature reactance and synchronous reactance
Z_s=complex(R_a,X_s)//synchronous impedance
theta=phasemag(Z_s)*(%pi/180)  //phasemag retuens angle in degrees.not radians
N_s=120*f/Pole  //synchronous speed

//subscript 1` refers to load 1
I_a1=20
phi_1=acos(1)
E_R1= I_a1* abs(Z_s)
E_bph =  sqrt( E_R1^2 + V_ph^2 - 2*E_R1*V_ph*cos(phi_1+theta)  )
 
//subscript 2` refers to load 2
I_a2=60
E_R2= I_a2* abs(Z_s)
phi_2= acos ((E_R2^2 + V_ph^2 -E_bph^2 )/(2*E_R2*V_ph))   -theta   //new power factor

input_power=sqrt(3)*V_L*I_a2*cos(phi_2)
cu_loss=3*I_a2^2*R_a
P_m=input_power-cu_loss
T_g =P_m /(2*%pi*N_s/60)   //gross mechanical power developed

printf('Gross torque developed is %.4f N-m and new power factor is %.4f lagging',T_g,cos(phi_2))
