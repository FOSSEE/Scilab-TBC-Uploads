 //signals and systems
//Example 4.8
//Lapalce Transform for convolution
s=%s
syms t ;
a=3;b=2;
[A]=pfss(1/(s^2-5*s+6)); //partial fraction of F(s)
F1 = ilaplace(A(1),s,t)
F2 = ilaplace(A(2),s,t)
//F3 = ilaplace(A(3),s,t)
F = F1+F2;
disp(F,"f(t)=")