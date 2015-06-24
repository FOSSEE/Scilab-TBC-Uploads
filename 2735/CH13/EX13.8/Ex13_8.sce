clc
clear
//Initialization of variables
pi=50 //psia
pe=34.6 //psia
//calculations
disp("From table B-18 and B-17,")
pr1=1.35
p0f=pi/pr1
pfs=0.528*p0f
per=pe/pfs
Me=0.6
p0e=1.19
pyx=p0e/pr1
Mx=1.64
My=0.658
px=0.22*pi
py=32.9 //psia
p2yx=0.852
pe2=1.65*pfs
//results
printf("Mach numbers before and after are %.2f and %.3f respectively",Mx,My)
printf("\n Pressure before and after are %.1f psia and %.1f psia",px,py)
printf("\n Exhaust pressure = %.1f psia",pe2)
