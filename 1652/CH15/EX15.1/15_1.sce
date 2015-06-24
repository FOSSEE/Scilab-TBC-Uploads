clc
//Initialization of variables
I=0.5 //amp
t=55  //min
we=31.77
//calculations
Q=I*t*60
n=Q/96496
w=n*we
//results
printf("Weight of copper leaving = %.3f g",w)
