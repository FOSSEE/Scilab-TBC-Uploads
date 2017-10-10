
clc
//given
u=.3
theta=270*%pi/180
l=18//in
a=4//in
Di=15//in
Do=21//in
w=.5//tons
W=w*2204//lb
Q=W*Di/Do//required tangential braking force on the drum
k=%e^(u*theta)//k=T1/T2
p=Q*a/(l*(k-1))
printf("Least force required, P = %.f lb",p)
