//function//
s=%s;
TFcont=syslin('c',[(7 + 2*s + 3*(s^2))/(5 + 12*s + 5*(s^2) + s^3 )])
SScont=tf2ss(TFcont)
[Ac,Bc,U,ind]=canon(SScont(2),SScont(3))
