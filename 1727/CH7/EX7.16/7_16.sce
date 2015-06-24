clc
//Initialization of variables
d1=0.1 //m
d2=0.05 //m
l1=20 //m
l2=20 //m
f=0.02
//calculations
Kl=(f*l2/d2 *(d1/d2)^4 - f*l1/d1)
//results
printf("Loss coefficient = %d ",Kl)
