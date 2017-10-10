//To find the least effort applied at the end of the lever which will provide a braking torque of 4000 lb ft
clc
//given
n=12
u=.28
a=4.5//in
b=1//in
l=21//in
r=15//in
Tb=4000//lb
theta=10*%pi/180
//k=Tn/To
k=((1+u*tan(theta))/(1-u*tan(theta)))^n
Q=Tb*(12/r)
P=Q*(a-b*k)/(l*(k-1))//from combining 8.6 with k=e^u*theta
printf("The least effort required = P = %.1f lb",P)
