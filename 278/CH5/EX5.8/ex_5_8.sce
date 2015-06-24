//find width and depth of beam
//refer fig 5.7
clc
W=400//N
L=300//mm
f=40//N/mm^2
//h=2*b
//Z=b*h^2/6=2b^3/3//mm^3
M=W*L//N-mm
//f=M/Z
b=[M*1.5/(f)]^(1/3)//mm
h=2*b//mm
printf("the width of beam is ,%f mm\n",b)
printf("the height of beam is,%f mm\n",h)
