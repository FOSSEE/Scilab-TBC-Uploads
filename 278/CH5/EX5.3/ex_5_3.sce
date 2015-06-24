//find daimeter of shaft
clc
//solution
//given
P=97.5*10^3//W//power
N=180//rpm
t=60//N/mm^2//tortional stress
l=3000//mm//length of shaft
C=80*10^3//N/mm^2
//let T be torque in N-m
pi=3.14
q=0.0174//rad//angle
//P=2*pi*N*T/60
T=P*60/(2*pi*N)//N-m
//we will find diameter of shaft using stiffness and strength
//using strength
//T*1000=(pi/16)*t*d^3
d=(16*T*1000/pi/t)^0.33//mm
//using stiffness
//J=(pi/32)*d^4
//T/J=C*q/l
d1=(l*T*1000/C/q/0.0982)^(1/4)
printf("the diameter using strength is,%f mm\n",d)
printf("the diameter using stiffness is,%f mm\n",d1)