clc
//Chapter1: Signals
//Example1,page no 12
//Given:
// Curve on page no 9....fig 1.6
t=0:0.1:2*%pi,t0=0,t1=2*%pi
C=((integrate('sin(t)','t',t0,t1/2)-integrate('sin(t)','t',t1/2,t1))/integrate('(sin(t))^2','t',t0,t1))

mprintf('The optimum value of C to minimise the mean square error is:\n C= %f',C)


