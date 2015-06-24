//Example 16.4
clc
s=%s;
H=1/(s+1);
Hs=syslin('c',H)
J=1/(s+5);
Js=syslin('c',J)
G=Hs*Js;
Gs=syslin('c',G)
clf
bode([Hs;Js;Gs;])
legend(['1/(s+1)';'1/(s/5+1)';'1/(5*(s+1)*(s/5+1))'])
