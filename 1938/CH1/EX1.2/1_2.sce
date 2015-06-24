clc,clear
printf('Example 1.2\n\n')

Pole=4
phi=21*10^-3  //flux produced by each pole in webers
N=1120        //Speed of armature in r.p.m
Coils=42
turns_per_coil=8
Turns=Coils * turns_per_coil
Z=2*Turns  //Number of armature conductors

//Part(i)
A1=Pole  //no of parallel paths for lap winding
E1=phi*N*Z*Pole/(60*A1)
printf('(i)  e.m.f generated is %.3f V',E1)

//Part(ii)
A2=2  //wave winding
E2=E1 //as mentioned in the question
N2=E2/(phi*Z*Pole/(60*A2)) //E=phi*N*Z*Pole/(60*A)
printf('\n(ii)  For wave-wound armature,above calculated e.m.f is generated at %.0f r.p.m',N2)
