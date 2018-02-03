//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 6.4

clc;
clear; 
s=poly(0,'s')
K=240//the value of K 
h=syslin('c',240/(s*(s+10)^2))
evans(h)
xtitle("uncompensated system")
kvd=20//given desired velocity error constant
// transfer function of un compessated system G(s)=20/s*(s+2)*(s+8)
//by definition of velocity error constant applying limit s=0 in G(s)
kvu=2.4
disp(kvu,'The velocity error constant of un compensated system is')
disp(kvd,'desired velocity error constant')
A=kvd/kvu//A is the factor by which velocity error constant increases
betaa=A*1.2
disp(betaa,'the value of betaa is')
zc=0.1*(-10)//zero of lag compensator=0.1* second pole
t=(-1/zc)
disp(t,'the value for t is')
pc=(-1)/(betaa*t)//pole of lag compensator
//transfer function of lag compensation is (s+1/t)/(s+1/betaa*t))
hc=syslin('c',(s+1)/(s+0.1))
disp(hc,'transfer function of lag compensation is')
//open loop transfer function of compensated system is h*hc
hcmp=syslin('c', h*hc)
disp(hcmp,'open loop transfer function of compensated system is')
figure()
evans(hcmp)
xtitle("compensated system")
//by definition of velocity error constant applying limit s=0 in hcmp
kvc=24//velocity error constant of compensated system
disp('since the velocity error constant  of compensated system is greater than specified value  the design is acceptable')
