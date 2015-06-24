//Chapter 26
clc
//Example1
//given
Tp=3 //proper time in sec
c=3*10^8 //velocity of light in m/sec
v=0.95*c
gamma=1/sqrt(1-(v^2/c^2))
T=gamma*Tp
disp(T,"Period of the pendulum w.r.t to observer is")


