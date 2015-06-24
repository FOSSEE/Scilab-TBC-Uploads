//clear//
//Example9.11:Inverse Lapalce Transform 
//X(S) = 1/((s+1)(s+2))  -2< Re(s)< -1
s =%s ;
syms t ;
[A]=pfss(1/((s+1)*(s+2))) //partial fraction of F(s)
F1 = ilaplace(A(1),s,t)
F2 = ilaplace(A(2),s,t)
F = -F1+F2;
disp(F,"f(t)=")
//Result
// -(%e^-t)-(%e^-(2*t)) 
