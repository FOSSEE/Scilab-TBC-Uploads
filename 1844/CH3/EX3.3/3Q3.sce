clc
// all are in m
// For first 1500 m
e= (0+.10)/2
L=20
L1=L+e
l1=1500
k1= L1*l1/L
//For next 1400 m
e=(.10+.18)/2
L=20
L1=L+e
l1=1400
k2= L1*l1/L

l=k1+k2
printf('Total length %f m',l)
