//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 6.5

clc;
clear; 
s=poly(0,'s')
//calculation of gain K
//given for ramp input ess(steady state error ) is 1/15
ess=1/15
kv=1/ess
// open loop transfer function G(s)=K/s*(s+1)
//by definition of velocity error constant applying limit s=0 in G(s) 
disp('the value of K is 15;')
h=syslin('c',15/(s*(s+1)))
bode(h)
show_margins(h)
xtitle("uncompensated system")
//from the plot the phase margin of uncompensated system is 13
//but the system requires phase margin of 45 so lead compensation required
pm=45//choose PM of compensated system is 45 degree
phim=37//maximum lead angle
alpha=(1-(sind(phim)))/(1+(sind(phim)))
disp(alpha,'the vale of alpha is')
wmdb=-20*log(1/sqrt(alpha))////db magnitude
wm=5.6//from the bode plot of uncompensated system the frequency wm corrosponding to db gain of -6db is 5.6rad/sec
t=1/(wm*sqrt(alpha))
disp(t,'the value of t is')
//transfer function of lead compensator is (s+1/t)/(s+1/alpha*t)
hc=syslin('c',(0.25*(1+0.36*s))/(1+0.09*s))
disp(hc,' transfer function of lead compensator is')
//open loop transfer function of compensated system is h*hc
hcmp=syslin('c',h*hc)
disp(hcmp,'open loop transfer function of compensated system is ')
figure()
bode(hcmp)
show_margins(hcmp)
xtitle("compensated system")
