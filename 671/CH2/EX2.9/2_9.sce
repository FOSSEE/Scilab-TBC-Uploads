//KCLs

A=[2,-1;-4,19]
V=inv(A)*[10;25]

Pc=1*V(1)
Iv=(5-V(2))/2 + (5-V(1))/5
Pv=5*Iv

disp(V)
disp(Pv,Pc)