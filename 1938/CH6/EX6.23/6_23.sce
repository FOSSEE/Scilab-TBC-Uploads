clc,clear
printf('Example 6.23\n\n')

X_d=7.6,X_q=4.5,R_a=0.15 //armature resistance and synchronous reactance of direct,quadrature axisV_l=13.8*10^3
V_l=13.8*10^3
V_t=V_l/sqrt(3)
phi=acos(0.8)
VA=25*10^6
I_a=VA/(sqrt(3)*V_l)
psi=atan(  (V_t*cos(phi)+I_a*X_q)/(V_t*sin(phi)+I_a*R_a)            )

delta=psi-phi
I_s=I_a
I_d=I_s*sin(psi)
I_q=I_s*cos(psi)

E_f=V_t*cos(delta)+I_d*X_d+I_q*R_a
regulation=100*(E_f-V_t)/V_t

printf('percentage regulation is %.2f percent',regulation)
