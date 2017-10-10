
clc
//given
N=1500 //rpm
R=4//lb
g=32.2//ft/s^2
w=%pi*N/30
stroke=5//in
r=stroke/2
l=9//in
b=3.5//in
B=(3/2)*R*r/b//primary force
n=l/r
F=(3/2)*R*w^2*r/(g*12*n)//secondary force
printf("\nResultant primary force = %.2f lb\nResultant secondary force = %.f lb",B,F)
