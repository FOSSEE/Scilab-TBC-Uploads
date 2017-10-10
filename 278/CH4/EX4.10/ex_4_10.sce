
clc
//solution
//given
D=12//mm//initial diameter
l=60//mm//initial length
L=80//mm//final length
d=7//mm//final diameter
Wy=3400//N//yield load
Wu=6100//N//ultimate load
pi=3.14
A=pi*D^2/4//mm^2//initial area of rod
a=pi*d^2/4//mm^2//final area of rod
Fy=Wy/A//N/mm^2//yield stress
Fu=Wu/A//N/mm^2//ultimate stress
%ria=(A-a)/A*100//percentage reduction in area
%eil=(L-l)/L*100//percentage elongation in length
printf("the yield stress is,%f N/mm^2\n",Fy)
printf("the ultimate stress is ,%f N/mm^2\n",Fu)
printf("the percentage reduction in area is,%f\n",%ria)
printf("the percentage increase in length is,%fn",%eil)

