//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 6.1

clc;
clear; 
s=poly(0,'s')
//calculation of gain K
//for ramp input ess(steady state error ) is0.2
ess=0.2
kv=1/ess
// open loop transfer function G(s)=K/s*(1+2*s)
//by definition of velocity error constant applying limit s=0 in G(s) 
disp('the value of K is 5;')
h=syslin('c',5/(s*(1+2*s)))
bode(h)
show_margins(h)
xtitle("uncompensated system")
//from the plot the phase margin of uncompensated system is 18
//but the system requires phase margin of 40 so lag compensation required
pm=45//choose PM of compensated system is 45 degree
phigcn=45-180// phase of G(s) at new gain cross over frequency
wgcn=0.5//the frequency corrosponding to  phase of -135 is 0.5 rad/sec
agcn=20//db magnitude at wgcn
//20log betaa=20
betaa=10^(agcn/20)
disp(betaa,'the value for betaa is')
zc=wgcn/10//zero of lag compensator
t=10/wgcn 
disp(t,'the value for t is')
pc=1/(betaa*t)
disp(pc,'pole of lag compensator is')
//transfer function of lag compensation is (s+1/t)/(s+1/betaa*t))
hc=syslin('c', (10*(1+20*s))/(1+200*s))
disp(hc,'the transfer function of lag compensator is;') 
//open loop transfer function of compensated system is h*hc
hcmp=syslin('c',h*hc)
disp(hcmp,'open loop transfer function of compensated system is') 
figure()
bode(hcmp)
show_margins(hcmp) 
xtitle("compensated system")


