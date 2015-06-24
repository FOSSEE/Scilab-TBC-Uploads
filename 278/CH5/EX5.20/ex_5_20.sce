//find stresses at the sides of the column
clc
//solution
//given
D=250//mm
d=200//mm
P=20000//N
e=500//mm
pi=3.14
A=(pi/4)*[D^2-d^2]//mm^2
fo=P/A//N/mm^2//direct compressive stress
Z=(pi/64)*[D^4-d^4]*(1/125)//mm^3
M=P*e//N-mm
fb=M/Z//N/mm^2
Fm=fb+fo//N/mm^2//max comprssive stress
Fmi=fb-fo//max tensile stress//N/mm^2
printf("the max comprssive stress is ,%f N/mm^2\n",Fm)
printf("the max tensile stress is ,%f N/mm^2",Fmi)