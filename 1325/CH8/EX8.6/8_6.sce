//To find the minimum distance in which the car may be stopped
clc
//given
w=9.5 //ft
h= 2 //ft
x=4 //ft
v=30//mph
V=1.46667*v//ft/s
u1=.1
u2=.6
g=32.2//ft/s^2
//a) rear wheels braked
fa1=(u1*(w-x)*g)/(w+u1*h)
fa2=(u2*(w-x)*g)/(w+u2*h)
sa1=V^2/(2*fa1)
sa2=V^2/(2*fa2)
//b) front wheels braked
fb1=u1*x*g/(w-u1*h)
fb2=u2*x*g/(w-u2*h)
sb1=V^2/(2*fb1)
sb2=V^2/(2*fb2)
//c) All wheels braked
fc1=u1*g
fc2=u2*g
sc1=V^2/(2*fc1)
sc2=V^2/(2*fc2)
k1=(x+u1*h)/(w-x-u1*h)//Na/Nb
k2=(x+u2*h)/(w-x-u2*h)//Na/Nb
printf("\nCoefficient of friction = 0.1\na) Minimum distance in which car may be stopped when the rear brakes are applied = %.f ft\nb) Minimum distance in which car may be stopped when the front brakes are applied = %.f ft\nc) Minimum distance in which car may be stopped when all brakes are applied = %.f ft\nCoefficient of friction = 0.6\na) Minimum distance in which car may be stopped when the rear brakes are applied = %.f ft\nb) Minimum distance in which car may be stopped when the front brakes are applied = %.f ft\nc) Minimum distance in which car may be stopped when all brakes are applied = %.f ft\n",sa1,sb1,sc1,sa2,sb2,sc2)
printf("Required ration of Na/Nb\nFor u1 = 0.1 -> %.3f\nFor u2 = 0.6 -> %.2f\n",k1,k2)
