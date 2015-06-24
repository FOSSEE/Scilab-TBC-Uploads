clc,clear
printf('Example 2.14\n\n')

R_a=0.08, E_b1=242 , V=250
//part(i)
I_a1= (V-E_b1)/R_a
printf('(i)Armature current = %.0f A',I_a1)

//part(ii)
N=0
E_b=0 //because N=0
I_a_start=V/R_a
printf('\n(ii)Starting armature current = %.0f A',I_a_start)

//part(iii)
I_a2=120
E_b2=V-I_a2*R_a
printf('\n(iii)Back emf if armature current is changed to 120 A=   %.1f V',E_b2)

//part(iv)
I_a=87,N_m=1500
E_g=V + I_a*R_a //induced emf
N_g=N_m*(E_g/E_b1)//as E (prop.) N
printf('\n(iv)Generator speed to deliver 87 A at 250 V = %.1f rpm',N_g)
