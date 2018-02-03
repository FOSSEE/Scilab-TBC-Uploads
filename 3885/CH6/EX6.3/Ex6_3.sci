//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 6.3

clc;
clear; 
s=poly(0,'s')
K=20//the value of K 
h=syslin('c',20/(s*(s+2)*(s+8)))
evans(h)
xtitle("uncompensated system")
//given  ramp input ess(steady state error ) is0.125
ess=0.125
kvd=1/ess//desired velocity error constant
// transfer function of un compessated system G(s)=20/s*(s+2)*(s+8)
//by definition of velocity error constant applying limit s=0 in G(s)
kvu=1.25 
disp(kvu,'The velocity error constant of un compensated system is')
disp(kvd,'desired velocity error constant')
A=kvd/kvu//A is the factor by which velocity error constant increases
betaa=A*1.2
disp(betaa,'the value of betaa is')
zc=0.1*(-2)//zero of lag compensator=0.1* second pole
t=(-1/zc)
disp(t,'the value for t is')
pc=(-1)/(betaa*t)//pole of lag compensator
//transfer function of lag compensation is (s+1/t)/(s+1/betaa*t))
hc=syslin('c',(s+0.2*s)/(s+0.026*s))
disp(hc,'transfer function of lag compensation is')
//open loop transfer function of compensated system is h*hc
hcmp=syslin('c', h*hc)
disp(hcmp,'open loop transfer function of compensated system is')
figure()
evans(hcmp) 
xtitle("compensated system")
//by definition of velocity error constant applying limit s=0 in hcmp
kvc=9.165//velocity error constant of compensated system
essc=1/kvc//steady state error for compensated system
disp(essc,'steady state error for compensated system')
disp('since the steady state error of compensated system is less than 0.125 the design is acceptable')


