//Example 15.31
 //time domain specifications of second order system
 clear;clc;
 xdel(winsid());
 mode(0);
 
 //converting the given differential equation in "s" domain
 //since x and y are constants
 //therefoere considering "x=y=1" 
 
s=%s;
g=s^2+5*s+7; 
x=coeff(g)
//comparing with the standard equation of second order system.
wn=sqrt(x(:,1)) //undamped natural frequency
zeta=(5/(2*wn)) //damping ratio
wd=wn*sqrt(1-zeta^2)//damped natural frequency
Tc=1/(zeta*wn)//Tc=time constant of the system
