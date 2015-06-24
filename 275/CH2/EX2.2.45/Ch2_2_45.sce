clc
disp("Example 2.45")
printf("\n")
disp("Find the capacitor value for half wave rectifier")
Vdc=20
f=60
RL=500
r=0.1/(2*sqrt(3))
c=1/(2*sqrt(3)*r*f*RL)
printf("Capacitor value =\t%e farad\n",c)
