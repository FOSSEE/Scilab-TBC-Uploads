clc,clear
printf('Example 6.29\n\n')

V_L=6.6*10^3
V_ph=V_L/sqrt(3)
V_t=V_ph
X_d=9.6,X_q=6,R_a=0 //armature resistance and synchronous reactance of direct,quadrature axis
VA=3.5*10^6
I_L=VA/(sqrt(3)*V_L)

P=2.5*10^6,phi=acos(0.8)
I_a=P/(sqrt(3)*V_L*cos(phi))
psi=atan(  (V_t*sin(phi)+ I_a*X_q)/(V_t*cos(phi)+ I_a*R_a)     )

delta=psi-phi
I_d=I_a*sin(psi)
I_q=I_a*cos(phi)

E_f=V_t*cos(delta)+I_d*X_d+I_q*R_a
regulation=100*(E_f-V_t)/V_t
P_max=(V_ph^2/2)*((X_d-X_q)/(X_d*X_q))*(sin(2*delta))

printf('percentage voltage regulation is %.2f percent',regulation)
printf('\nPower under open circuit is %.1f kW per phase',P_max/1000)
