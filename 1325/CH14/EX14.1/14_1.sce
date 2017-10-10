//to find balance weights
clc
//given
W=200//lb
r=9//in
b1=15//in
bm=b1
l=10//in
d=50//in
//case a
ma=d+l
Bm1=W*r*l/(d*bm)//From 14.2
B11=W*r*ma/(d*b1)//from 14.3
//case b
mb=d-l
Bm2=W*r*l/(d*bm)//from 14.2
B12=W*r*mb/(d*b1)//from 14.3
printf("\na) Bm= %.f lb ; B1= %.f lb\nb) Bm= %.f lb ; B1= %.f lb",Bm1,B11,Bm2,B12)
