clc,clear
printf('Example 6.34\n\n')

X_d=0.8,X_q=0.5  //both per unit
R_a=0 //assumed
phi=acos(0.8)
V_t=1//pu
I_a=1 //full-load

psi=atan(  (V_t*sin(phi)+I_a*X_q)/(V_t*cos(phi)+I_a*R_a)            )
delta=psi-phi
I_d=I_a*sin(psi)
I_q=I_a*cos(psi)
E_f=V_t*cos(delta)+I_d*X_d+I_q*R_a

printf('Open circuit voltage is %.3f p.u.',E_f)
