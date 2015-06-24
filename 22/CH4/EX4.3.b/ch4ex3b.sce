//example 4.3
//(b) X(S) = (2*s^2+5)/s^2-3*s+2  Re(s)>-1
s =%s ;
syms t ;
[A]=pfss((2*s^2+5)/((s^2-3*s+2))); //partial fraction of F(s)
F1 = ilaplace(A(1),s,t)
F2 = ilaplace(A(2),s,t)
//F3 = ilaplace(A(3),s,t)
F = F1+F2;
disp(F,"f(t)=")