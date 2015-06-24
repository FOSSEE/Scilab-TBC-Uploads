clc,clear
printf('Example 6.25\n\n')

I_a=10
phi=20 //lag and degrees
V_t=400
X_d=10,X_q=6.5,R_a=0 //armature resistance and synchronous reactance of direct,quadrature axis

psi=atand(  (V_t*sind(phi)+I_a*X_q)/(V_t*cosd(phi)+I_a*R_a)            )
delta=psi-phi
I_d=I_a*sind(psi)
I_q=I_a*cosd(psi)

printf('Load angle is %.2f degrees \n',delta)
printf('I_d and I_q are %.4f A and %.4f A respectively ',I_d,I_q  )
