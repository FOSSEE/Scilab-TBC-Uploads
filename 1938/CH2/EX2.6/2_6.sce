clc,clear
printf('Example 2.6\n\n')

V=250
I_L =20 //load current
R_a=0.3, R_sh=200 //Armature and shunt field winding
I_sh=V/R_sh //shunt current
I_a=I_L-I_sh //armature current
E_b= V - I_a*R_a //emf generated
printf('Armature current is %.2f A\n',I_a)
printf('Back e.m.f is %.3f V',E_b)
