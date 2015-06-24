clc
clear

//input
//given e.m.f. equation is e=340sin(314t)V and current equation is i=12sin(314t-0.7)A
t=0.0015;//time in seconds after which the e.m.f. is zero and increasing positively
vm=340;//maximum voltage in volts from voltage equation
im=12;//maximum current in amperes from current equation
phi=0.7//phase angle from current equation
w=314;//from voltage and current equations

//calculations
//when t=0.0015 seconds
p=vm*sin(w*t)*im*sin((w*t)-phi);//power in watts
pmax=(vm*im*((cos(phi))+1))/2;//maximum power in watts
T=(((acos(((2*pmax)/(vm*im))-(cos(phi))))+phi)*(1000))/(2*w);//time interval in milliseconds

//output
mprintf('at a time of 1.5mS after the specified instant the power was %3.0f W and the maximum power occured %3.1f mS after the same specified instant',p,T)
