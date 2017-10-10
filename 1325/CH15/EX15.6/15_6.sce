//to  find the amplitude if the period of the applied force coincided with the natural period of vibration of the system
clc
//given
m=20//lb
k=50//lb/in
F=30//lb
w=50//sec^-1 
g=32.2//ft/s^2
d=m/k
x=F/k//extension of the spring
b=g*12/d
a=(b/30.02)^(1/2)//from equation 15.28
D=1/((1-w^2/b)^2+a^2*w^2/b^2)^(1/2)
Af=D*x//amplitude of forced vibration 
D=(b/a^2)^(1/2)//At resonance
A=D*x//amplitude at resonance
printf("\nAmplitude of forced vibrations = %.3f in\nAmplitude of the forced vibrations at resonance = %.2f in",Af,A)

