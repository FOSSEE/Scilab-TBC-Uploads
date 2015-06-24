clc,clear
printf('Example 6.2\n\n')

X_d=0.7 , X_q=0.4  //direct and quadrature axis synchronous reactance p.u.
R_a=0
phi=acos(0.8)  //Lag

V_t=1 //assumed rated terminal Voltage 
I_a=1 //Full-load armature current

psi=atan(  (V_t*sin(phi)+I_a*X_q)/(V_t*cos(phi)+I_a*R_a)            )
delta=psi-phi
I_d=I_a*sin(psi)
I_q=I_a*cos(psi)
E_f=V_t*cos(delta)+I_d*X_d+I_q*R_a
printf('Total e.m.f induced on open circuit is %.4f p.u.',E_f)
