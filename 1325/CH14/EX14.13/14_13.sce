//To find maximum and minimum secondary force 
clc
//given
g=32.2//ft/s^2
n=2000//rpm
R=6//lb
r=3//in
L=11//in
w=%pi*n/30
n=L/r
//minimum secondary force
F1=2*R*w^2*r/(g*n*12)
a=floor(F1)
//maximum secondary force
F2=6*R*w^2*r/(g*n*12)
b=floor(F2)
printf("\nMinimum secondary force = %.f lb\nMaximum secondary force = %.f lb",a,b)
