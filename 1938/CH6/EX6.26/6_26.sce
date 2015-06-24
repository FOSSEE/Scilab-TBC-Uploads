clc,clear
printf('Example 6.26\n\n')

X_d=0.8,X_q=0.5,R_a=0.02 //armature resistance and synchronous reactance of direct,quadrature axis

//case(i)  lag
phi=acos(0.8)
V_t=1
I_a=1//full-load
psi=atan(  (V_t*sin(phi)+I_a*X_q)/(V_t*cos(phi)+I_a*R_a)            )
delta=psi-phi

I_d=I_a*sin(psi)
I_q=I_a*cos(psi)

E_f=V_t*cos(delta)+I_d*X_d+I_q*R_a
regulation=100*(E_f-V_t)/V_t
printf('percentage regulation at 0.8 pf lag is %.2f percent',regulation)

//case(ii)  lead
phi2=-1*acos(0.8) //minus sign because of leading pf
psi2=atan(  (V_t*sin(phi2)+I_a*X_q)/(V_t*cos(phi2)+I_a*R_a)            )
delta2=psi2-phi2

I_d2=I_a*sin(psi2)
I_q2=I_a*cos(psi2)

E_f2=V_t*cos(delta2)+I_d2*X_d+I_q2*R_a
regulation2=100*(E_f2-V_t)/V_t
printf('\npercentage regulation at 0.8 pf lead is %.2f percent',regulation2)
