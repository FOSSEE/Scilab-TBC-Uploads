//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 6.9

clc;
clear; 
s=poly(0,'s')
//calculation of gain K
kv=80//given velocity error constant
// open loop transfer function G(s)=K/s*(s+3)(s+6)
//by definition of velocity error constant applying limit s=0 in G(s) 
disp('the value of K is 1440;')
h=syslin('c',1440/(s*(s+3)*(s+6)))
bode(h)
show_margins(h)
xtitle("uncompensated system")
//from the plot the phase margin of uncompensated system is -46
pm=40//choose PM of compensated system is 40 degree
phigcn=40-180// phase of G(s) at new gain cross over frequency
wgcn=1.8//the frequency corrosponding to  phase of -140 is 1.8 rad/sec
wgcl=4//choose gain cross over frequency of lag compensator as 4rad/sec
agcl=23//db magnitude at egcl is 23db
//agcl=20log*betaa
betaa=10^(agcl/20)
disp(betaa,'the value of betaa is')
zc1=wgcl/10//zero of lag compensator
t1=10/wgcl 
disp(t1,'the value of t1 is ')
pc1=1/(betaa*t1)
disp(pc1,'pole of lag compensator is')
//transfer function of lag section is (betaa*1+st1)/(1+s*betaa*t1)
hc1=syslin('c',(14*(1+2.5*s))/(1+35*s))
disp(hc1,'transfer function of lag section')
alpha=1/betaa
disp(alpha,'the value of alpha is')
wmdb=-20*log(1/sqrt(alpha))////db magnitude
wm=17//from the bode plot of uncompensated system the frequency wm corrosponding to db gain of -12db is 17rad/sec
t2=1/(wm*sqrt(alpha))
//transfer function of lead section is (alpha*1+st2)/(1+s*alpha*t2)
hc2=syslin('c',(0.07*(1+0.22*s))/(1+0.0154*s))
disp(hc2,'transfer function of lead section')
hc3=syslin('c',hc1*hc2)
disp(hc3,'the tansfer function of lag lead compensation system is')
//open loop transfer function of compensated system is h*hc3
hcmp=syslin('c',h*hc3)
disp(hcmp,'the overll transfer function of compensated system')
figure()
bode(hcmp)
show_margins(hcmp)
xtitle("compensated system")

