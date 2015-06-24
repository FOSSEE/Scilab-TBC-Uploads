// find..
clc
//solution
//given
P=20*1000//W
N=300//rpm
d=550//mm
n=4
fb=15//N/mm^2
//let b1 minor axis,a1 major axis
T=(P*60)/(2*%pi*N)//N-m
M=2*T/n*1000//N-mm
//a1=2b1
//Z=(%pi/32)*b1*a1^2=(%pi)/8*b1^3
//fb=M/Z
b1=(M/(%pi/8*fb))^(1/3)//mm
printf("the minor and moajor axis is,%f mm\n,%f mm",b1,2*b1)


