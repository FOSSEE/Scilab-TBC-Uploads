clc,clear
printf('Example 6.42\n\n')

V_l=230
VA=5*10^3
X_d=12,X_q=7,R_a=0 //armature resistance and synchronous reactance of direct,quadrature axis
phi=acos(1)

I_l=VA/(V_l*sqrt(3))
V_ph=V_l/sqrt(3)
V_t=V_ph,I_a=I_l

psi=atan(  (V_t*sin(phi)+I_a*X_q)/(V_t*cos(phi)+I_a*R_a)            )
delta=psi-phi
I_d=I_a*sin(psi)
I_q=I_a*cos(psi)
E_f=V_t*cos(delta)+I_d*X_d+I_q*R_a

printf('Excitation voltage is %.3f V ',E_f)
