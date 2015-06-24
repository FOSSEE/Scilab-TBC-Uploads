clc;
s = %s;
G = syslin('c',200/(s^2+10*s+200));

disp(G,"G(s)=");
printf("input is a Step function");
syms t s;
R = laplace(1,t,s);
disp(R,"R(s)=");
C = G*R;
disp(C,"C(s)=G(s)R(s)=");
l = ilaplace(C,s,t);
disp(l,"c(t)=");
