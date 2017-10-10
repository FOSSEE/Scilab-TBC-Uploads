
clc
//solution
//given
d=60//mm
t=5//mm
u=350//(N/mm^2)//ultimate stress
pi=3.14
A=pi*d*t//(mm^2)//area under shear
//force required to punch a hole
P=A*u
printf("the force required is,%f N",P)