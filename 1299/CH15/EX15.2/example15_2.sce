 //Example 15.2
 //time domain specifications of second order system
 clear;clc;
 xdel(winsid());
 mode(0);
 
 //converting the given differential equation in "s" domain
 //since x and y are constants
 //therefoere considering "x=y=1" 
 
s=%s;
g=s^2+2*s; 
x=roots(g)
wn=sqrt (abs(x(1))) //undamped natural frequency
zeta=(1/wn) //damping ratio
wd=wn*sqrt(1-zeta^2)//damped natural frequency
Dc=(zeta*wn) //Dc=damping coefficient
Tc=1/(zeta*wn)//Tc=time constant of the system
