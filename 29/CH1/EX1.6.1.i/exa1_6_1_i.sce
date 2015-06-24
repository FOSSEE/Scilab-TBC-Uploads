//Caption:inverse_laplace_transform
// example 1.6.1.(i)
//page 7
// F(s)=1/(s*(s+1))
s =%s ;
syms t ;
[A]=pfss(1/((s)*(s+1))) // partial fraction of F(s)
F1 = ilaplace (A(1),s,t)
F2 = ilaplace (A(2),s,t)
F=F1+F2;
disp (F," f(t)=")//result