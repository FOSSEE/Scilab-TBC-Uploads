clc
//initialization of varaibles
disp("From Steam tables,")
h1=1219.4
P1=150 //psia
v1=0.59733 //cu ft/lb
s1=1.5995 //B/lb R
//calculations
u1=h1-P1*v1
sg=1.7549
sfg=1.4415
s2=s1
dx=(sg-s2)/sfg
u2=981.3
W=u1-u2
v2=23.48
//results
printf("Final specific volume = %.2f cu ft/lb",v2)
printf("\n Work per pound of fluid = %.1f B/lb",W)
