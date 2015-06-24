//find the compression of the piston rod
clc
//solution 
//given
d=50//mm//diameter of rod
l=600//mm//length of rod
D=400//mm//diameter of piston
p=0.9//(N/mm^2)//maximum steam pressure
E=210*10^3//(N/mm^2)//young's modulus
pi=3.14
A=(pi/4)*D^2//(mm^2)//area of cross section of piston
P=A*p//N//max load acting on piston
a=(pi/4)*d^2//(mm^2)//area of cross section of piston rod
//let x be the compression
x=(P*l)/(E*a)//mm
printf("the compression in piston rod is,%f mm",x)