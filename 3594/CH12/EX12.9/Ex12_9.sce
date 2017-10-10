
clc
//given
N=270//rpm
ihp=35.8
k=2.25//ft
g=32.2//ft/s^2
ke=1.93//from table on p 440
E=ihp*33000/N
Ef=ke*E
w=%pi*N/30
W=1000//lb
MOI=2*W*k^2//moment of inertia of both wheel
ks=Ef*g/(MOI*w^2)//formula for ks
p=ks/2
printf("The fluctuation speed is therefore %.4f or %.3f on either side of the mean speed",ks,p)
