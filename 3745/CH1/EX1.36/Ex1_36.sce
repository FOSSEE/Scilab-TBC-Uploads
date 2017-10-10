// Ex 36 Page 379

clc;clear;close;
// Given
p=4;//pole
I1=143;//A
Z=492;//armature conductors
theta=10;//degree
I2=10;//A

Ia=I1+I2;//A
Iw=Ia/2;//A for wave sound
Il=Ia/4;//for lap sound
//part(a)
ATw=Z*Iw*theta/360;//AT
nw=ATw/theta;//turns 
printf("(a) extra shunt field turns required = %d",nw)

//part(b)
ATl=Z*Il*theta/360;//AT
nl=ATl/theta;//turns 
printf("\n (b) extra shunt field turns required = %d",nl)
//answer wrong for part(a) in the book.
