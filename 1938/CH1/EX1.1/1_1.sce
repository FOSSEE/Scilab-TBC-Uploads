clc,clear
printf('Example 1.1\n\n')

Pole=4
Z=440   //number of conductors in armature
phi=0.07  //flux produced by each pole in webers
N=900     //Speed of armature in r.p.m

//Part(i)  lap wound
A1=Pole  //no of parallel paths for lap winding
E1=phi*N*Z*Pole/(60*A1)
printf('(i) e.m.f generated (lap-wound) is %.0f V',E1)

//Part(ii)  wave wound
A2=2  //no of parallel paths for wave winding
E2=phi*N*Z*Pole/(60*A2)
printf('\n(ii) e.m.f generated (wave-wound)is %.0f V',E2)
