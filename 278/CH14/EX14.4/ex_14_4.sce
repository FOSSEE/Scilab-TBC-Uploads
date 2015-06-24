//determine dia of the shaft
clc
//solution
//given
//ref fig 14.1
W=50*10^3//N
L=100//mm
x=1.4//m
fb=100//N/mm^2
M=W*L//N-mm
//let d eb dia
//M=(%pi/32)*fb*d^3
d=(M/9.82)^(1/3)//mm
printf("the dia of axle is,%f mm\n",d)