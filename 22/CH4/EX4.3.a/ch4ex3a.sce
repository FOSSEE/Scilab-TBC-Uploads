//signals and systems
//Inverse Lapalce Transform 
//(a) X(S) = (7s-6)/s^2-s-6  Re(s)>-1
s =%s ;
syms t ;
[A]=pfss((7*s-6)/((s^2-s-6))); //partial fraction of F(s)
F1 = ilaplace(A(1),s,t)
F2 = ilaplace(A(2),s,t)
//F3 = ilaplace(A(3),s,t)
F = F1+F2;
disp(F,"f(t)=")

