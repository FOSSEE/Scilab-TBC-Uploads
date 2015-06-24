clc,clear
printf('Example 1.18\n\n')

P=6 //number of poles
A=2 // because of wave wound
N_1=300 //speed of generator
Z=600 //number of armature conductors
phi_1=0.06  //flux per pole in webers 
E_g1=phi_1*P*N_1*Z/(60*A) //generated emf
printf('Emf generated is %.0f V\n\n',E_g1)

phi_2=0.055 //new flux per pole 
E_g2=550// new generated emf
N_2=E_g2/(phi_2*P*Z/(60*A)) //new speed of generator
printf('Required speed is %.2f r.p.m',N_2)
