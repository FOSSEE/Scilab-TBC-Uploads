clc,clear
printf('Example 6.24\n\n')

X_d=1,X_q=0.6,R_a=0 //armature resistance and synchronous reactance of direct,quadrature axis
phi=acos(0.8) //lag
V_t=1
I_a=1 //full load
psi=atan(  (V_t*sin(phi)+I_a*X_q)/(V_t*cos(phi)+I_a*R_a)            )

delta=psi-phi
I_s=I_a
I_d=I_a*sin(psi)
I_q=I_a*cos(psi)

E_f=V_t*cos(delta)+I_d*X_d+I_q*R_a
regulation=100*(E_f-V_t)/V_t
printf('percentage regulation is %.2f percent',regulation)
