clc
//initialisation of variables
k= 5.3e-5 //m/sec
H= 3 //m
a= 0.139 //radians
//calculations
A= H*cos(a)
i= sin(a)
q= k*i*A*3600
//results
printf ('rate of seepage = % 4f m^3/hr/m ',q)
