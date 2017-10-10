
clc
//given
theta=60//degrees
u1=0.15//between surfaces A annd B
u2=0.10//for the guides
phi=atand(u1)
phi1=atand(u2)
alpha=(theta+phi+phi1)/2//from 6.22, maximum efficiency is obtained at alpha
//from 6.23, maximum efficiency is given by nmax=(cos(theta+phi+phi1)+1)/(cos(theta-phi-phi1)+1)
nmax=(cos((theta+phi+phi1)*%pi/180)+1)/(cos((theta-phi-phi1)*%pi/180)+1)
printf("Maximum efficiency = %.4f and it is obtained when alpha = %.2f degrees",nmax,alpha)

