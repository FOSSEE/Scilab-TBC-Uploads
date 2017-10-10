//to find the stiffness of the governor spring
clc
//given
w=3//lb
W=15//lb
g=32.2
r2=2.5/12//ft
N2=240//rpm
w2=N*%pi/30
F2=w*w2^2*r2/g
a=4.5//in
b=2//in
sleevelift=0.5
r1=r2*12+a*sleevelift/b//the increase of radius for a scleeve lift is 0.5 in
N1=1.05*N2
F1=(N1/N2)^2*(r1/(r2*12))*F2
//a) at minimum radius
S2=(F2*a/b-w)*2-W
//b) At maximum radius
DB=r1-r2*12
BI=1.936//in
AD=a
BI=b
S1=2*(F1*AD/BI-w*(DB+BI)/BI)-W
k=(S1-S2)/sleevelift
printf("Stiffness of the spring is %.1f lb/in",k)
