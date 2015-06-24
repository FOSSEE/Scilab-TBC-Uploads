clc,clear
printf('Example 6.21\n\n')

V_l=480
X_d=0.1,X_q=0.075,R_a=0 //armature resistance and synchronous reactance of direct,quadrature axis
I_l=1200
I_ph=I_l/sqrt(3)
V_ph=V_l
V_t=V_l,I_a=I_ph
phi=acos(0.8)
psi=atan(  (V_t*sin(phi)+I_a*X_q)/(V_t*cos(phi)+I_a*R_a)            )
delta=psi-phi 

I_d=I_a*sin(psi)
I_q=I_a*cos(psi)
E_f=V_t*cos(delta)+I_d*X_d+I_q*R_a

printf('Excitation e.m.f is %.2f V ',E_f)
