
clear ;
close ;
clc ;
R=10; 
L=0.1; 
f=50; 
w=2*%pi*f; 
k=sqrt((R^2)+((w*L)^2));
angle=atan(w*L/R);
E=400 
A=E*sin(angle)/k;
i=A*exp((-R)*.02/L);
i=round(i*100)/100;
mprintf("the transient current =%fA",i)
