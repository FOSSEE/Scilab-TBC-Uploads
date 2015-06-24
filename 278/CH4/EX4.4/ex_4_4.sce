//1.)calculate the stress on the lower washers before the nuts are tightened,refer fig 4.5
//2.)what could be the stress in upper and lower washers...
clc
//solution
//given
d=20//mm
d1=22//mm
d2=50//mm
d3=22//mm
d4=44//mm
P1=120000//N
P2=5000//N
//1)stress on lower washer before the nuts are tightened
pi=3.14
A1=(pi/4)*(d2^2-d1^2)//(mm^2)
A2=(pi/4)*(d4^2-d3^2)//(mm^2)
//since load is equally distributed on 4 washers,therfore load Q1=P1/4
Q1=P1/4//N
//calculating stress on lower washer
f2=Q1/A1//(N/mm^2)
printf("\n the stress on lower washer when nuts are not tightened is,%f N/mm^2\n",f2)
//2)
//stres on upper washers
P2=5000//N
f3=P2/A2//stress//(N/mm^2)
printf("the stress on upper washer is,%f N/mm^2\n",f3)
//stress on lower washer when nuts are tightened
f4=(Q1+P2)/A1//(N/mm^2)
printf("the stress on lower washer when nuts are tightened is,%f N/mm^2",f4)