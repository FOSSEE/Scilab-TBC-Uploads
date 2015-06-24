//clear//
//Example9.15:Inverse Lapalce Transform 
//X(S) = (2s^2+5s+5)/((s+1)^2)(s+2))  Re(s)>-1
s =%s ;
syms t ;
[A]=pfss((2*(s^2)+5*s+5)/(((s+1)^2)*(s+2))); //partial fraction of F(s)
F1 = ilaplace(A(1),s,t)
F2 = ilaplace(A(2),s,t)
//F3 = ilaplace(A(3),s,t)
F = F1+F2;
disp(F,"f(t)=")
//Result
//(2*t*(%e^-t))-(%e^-t)+(3*%e^-(2*t))   
