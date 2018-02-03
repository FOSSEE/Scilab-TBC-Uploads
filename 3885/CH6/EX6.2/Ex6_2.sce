//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 6.2

clc;
clear; 
s=poly(0,'s')
//calculation of gain K
kv=30//velocity error constant is 30sec^-1
// open loop transfer function G(s)=K/s*(s+4)*(s+80)
//by definition of velocity error constant applying limit s=0 in G(s) 
disp('the value of K is 9600;')
h=syslin('c',9600/(s*(s+4)*(s+80)))
bode(h)
show_margins(h) 
xtitle("uncompensated system")
//from the plot the phase margin of uncompensated system is 12
//but the system requires phase margin of 33 so lag compensation required
pm=38//choose PM of compensated system is 38 degree
phigcn=38-180// phase of G(s) at new gain cross over frequency
wgcn=4.7//the frequency corrosponding to  phase of -142 is 4.7 rad/sec
agcn=16//db magnitude at wgcn
//20log betaa=16
betaa=10^(agcn/20)
disp(betaa,'the value for betaa is')
zc=wgcn/10//zero of lag compensator
t=10/wgcn 
disp(t,'the value for t is')
pc=1/(betaa*t)
disp(pc,'pole of lag compensator is')
//transfer function of lag compensation is (s+1/t)/(s+1/betaa*t))
hc=syslin('c', (6.3*(1+2.13*s))/(1+13.419*s))
disp(hc,'the transfer function of lag compensator is;') 
//open loop transfer function of compensated system is h*hc
hcmp=syslin('c',h*hc)
disp(hcmp,'open loop transfer function of compensated system is') 
figure()
bode(hcmp)
show_margins(hcmp)
xtitle("compensated system")


