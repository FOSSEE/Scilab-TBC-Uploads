clc,clear
printf('Example 6.22\n\n')

VA=3.5*10^6
P=32        //Poles
Power=2.5*10^6 //In watts
V_l=6.6*10^3
phi=acos(0.8)
I_l=Power/(V_l*cos(phi)*sqrt(3))
X_d=9.6,X_q=6,R_a=0 //armature resistance and synchronous reactance of direct,quadrature axis

V_t=V_l/sqrt(3)
psi=atan(  (V_t*sin(phi)+I_l*X_q)/(V_t*cos(phi)+I_l*R_a)            )
delta=psi-phi
I_s=I_l
I_d=I_s*sin(psi)
I_q=I_s*cos(psi)
E_f=V_t*cos(delta)+I_d*X_d+I_q*R_a

regulation=100*(E_f-V_t)/V_t
printf('percentage regulation is %.2f percent',regulation)
printf('\nExcitation emf= %.0f V',E_f)
