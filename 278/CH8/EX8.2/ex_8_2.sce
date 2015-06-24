//find inside diameter of pipe and wall thickness
clc
//solution
//given
Q=40//m^3/min
p=1.4//N/mm^2
v=1800//m/min
f=40//N/mm^2
D=1.13*sqrt(40/1800)//m
t=(p*D)/(2*f)+0.003//m
printf("the inside diameter is,%f m\n ",D)
printf("the wall thickness is,%f m",t)
