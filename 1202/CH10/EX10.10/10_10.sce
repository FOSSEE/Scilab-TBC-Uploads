clear
clc

//Example 10.10
disp('Example 10.10')


s=%s;
Gp=1/(5*s+1);
Gm=1/(s+1);
Gv=1/(2*s+1);
Ys=Gv*Gp*Gm

Routh=routh_t(Ys,poly(0,"Kc")); // produces routh table for polynomial 1+Kc*Ys
disp(Routh)
K1=roots(numer(Routh(3,1)));
K2=roots(numer(Routh(4,1)));

mprintf('K lies between %f and %f for system to be stable', K2,K1)



