//signals and systems
//example4.5
// X(S) = s+3+5*exp(-2*s)/(s+1)*(s+2))  Re(s)>-1
s1 =%s ;
syms t s;
[A]=pfss((s1+3)/((s1+1)*(s1+2))); //partial fraction of F(s)
F1 = ilaplace(A(1),s,t)
F2 = ilaplace(A(2),s,t)
//F3 = ilaplace(A(3),s,t)
Fa = F1+F2;
disp(Fa,"f1(t)=")
[B]=pfss((5)/((s1+1)*(s1+2))); //partial fraction of F(s)
F1 = ilaplace(B(1),s,t)
F2 = ilaplace(B(2),s,t)
Fb = (F1+F2)*(%e^(-2*s));
disp(Fb,"f2(t)=")
disp(Fa+Fb,"f(t)=")