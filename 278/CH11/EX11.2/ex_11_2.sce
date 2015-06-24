//find stress
clc
//solution
//given
d=24//mm
//using table 11.1,area corresponding to d=24mm ,core diameter dc is=20.32//mm
dc=20.32//mm
//let ft is stress
P=2840*d//N
pi=3.14
//P=A*ft
A=(pi/4)*dc^2
ft=P/(A)//N/mm^2
printf("the stress acting is,%f N/mm^2",ft)