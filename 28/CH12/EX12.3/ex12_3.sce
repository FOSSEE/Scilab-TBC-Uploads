s=%s;
H=syslin('c',(2*s^2+6*s+7)/((s+1)^2*(s+2)))
SS=tf2ss(H)
[Ac,Bc,U,ind]=canon(SS(2),SS(3))
