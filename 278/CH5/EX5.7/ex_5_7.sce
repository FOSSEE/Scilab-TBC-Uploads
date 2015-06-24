//find diameter of axle
clc
//solution
//given
L=1000//mm
W=30*10^3//N
f=60//N/mm^2//stress
//let d be diameter
pi=3.14
//Z=(pi/32)*d^3
M=W*L/4//N-mm
//f=M/Z
d=[M/(60*0.09982)]^(1/3)//mm
printf("the diameter of axle is,%f mm",d)