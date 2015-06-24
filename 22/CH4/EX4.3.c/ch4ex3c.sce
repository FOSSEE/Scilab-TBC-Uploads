//example4.3
//(c) X(S) = 6(s+34)/s(s^2+10*s+34)  Re(s)>-1
s =%s ;
syms t ;
[A]=pfss((6*(s+34))/(s*(s^2+10*s+34))); //partial fraction of F(s)
F1 = ilaplace(A(1),s,t)
F2 = ilaplace(A(2),s,t)
//F3 = ilaplace(A(3),s,t)
F = F1+F2;
disp(F,"f(t)=")