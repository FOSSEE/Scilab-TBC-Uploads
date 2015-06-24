//determine dimensions of arm
clc
//solution
//given
P=10*10^3//W
N=400//rpm
D=1200//mm//
R=600//mm//
f=15//N/mm^2
//let T be torque transmitted by pulley
pi=3.14
//P=2*pi*N*T/60
T=(P*60)/(2*pi*N)//N-m
L=T*1000/R//load transmitted//N
//since pulley has 4 arms, therefore weigth on each arm is
W=L/4//N
M=W*R//N-mm
//let 2a be length of minor axis and 2b be length of major axis,2a=4b//given
//Z=(pi/4)*a^2*b=pi*b^2
//f=M/Z
b=[M/(15*pi)]^(1/3)//mm
a=2*b//mm
printf("the length of major axis is,%f mm\n",2*a)
printf("the length of minor axis is,%f mm",2*b)