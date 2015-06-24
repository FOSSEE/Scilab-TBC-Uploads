clc;
s = %s;
num = poly([-3],'s','roots');
den = poly([-2 -4 -5],'s','roots');
G = num/den;
disp(G,"G(s)=");
disp(laplace(1,t,s),"input is a step function:");
syms t ;
printf("C(s)=G(s)*R(s)=");
K = G/s;
C = syslin('c',K);
disp(C);
[A] = pfss(C);l=0;disp(A);
for k = 1:size(A)
     F(k)= ilaplace(A(k),s,t);
     l = l+F(k);
end
disp(l,"c(t)=");