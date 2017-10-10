s=%s;

num=s+3;
den=s^2+2*s+7;

H=syslin('c',num,den)
SS=tf2ss(H)
[Ac,Bc,U,ind]=canon(SS(2),SS(3))
