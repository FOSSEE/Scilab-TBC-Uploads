//Caption:inverse_laplace_transform
// example 1.6.1.(v)
//page 8
// F(s)=5/(s(s^2+4s+5))
s =%s ;
syms t ;
[A]= pfss (5/(s*(s^2+4*s+5))) // partial fraction of F(s)
F1= ilaplace (A(1),s,t)
F2= ilaplace (A(2),s,t)
F=F1+F2;
disp (F,"f(t)=")//result