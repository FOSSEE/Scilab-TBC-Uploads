clc
//Chapter1: Signals
//Example1,page no12
//Given:
n=round(rand())//any integers
m=round(rand())//any integers
wo=2*(n+m)*%pi//Angular Freq
t=0:0.01:2*%pi/wo
to=0,t1=2*%pi/wo
C= integrate('sin(n*wo*t)*cos(m*wo*t)','t',to,t1)// integrating sin(n*wo*t)*cos(m*wo*t) function
mprintf('The value of the above integral is:C=%d\n Since C=%d, the two functions: \n  f(t)=sin(n*wo*t)\n  g(t)=cos(n*wo*t) are Orthogonal',C,C)




