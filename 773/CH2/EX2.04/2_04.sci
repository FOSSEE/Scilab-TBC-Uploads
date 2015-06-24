//ilaplace//
s=%s
syms t ;
disp((s+3)/((s+1)*(s+2)*(s+4)),"F(s)=")
[A]=pfss((s+3)/((s+1)*(s+2)*(s+4))) //partial fraction of F(s)
F1= ilaplace(A(1),s,t)
F2= ilaplace(A(2),s,t)
F3= ilaplace(A(3),s,t)
F=F1+F2+F3;
disp(F,"f(t)=")
