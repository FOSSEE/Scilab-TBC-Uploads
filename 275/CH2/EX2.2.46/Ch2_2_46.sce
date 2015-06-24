clc
disp("Example 2.46")
printf("\n")
disp("Find the capacitor value for full wave rectifier")
printf("Given\n")
Vdc=20
f=60
RL=500
r=0.1/(2*sqrt(3))
c=1/(4*sqrt(3)*r*f*RL)
printf("Capacitor value =\t%e farad\n",c)
