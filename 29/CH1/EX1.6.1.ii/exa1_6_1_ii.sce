//Caption:inverse_laplace_transform
// example 1.6.1.(ii)
//page 7
// F(s)=s+6/(s(s^2+4s+3))
s =%s ;
syms t ;
[A]= pfss((s+6)/(s*(s^2+4*s+3))) // partial fraction of F(s)
A(1)=2/s;
F1 = ilaplace (A(1),s,t)
F2 = ilaplace (A(2),s,t)
F3 = ilaplace (A(3),s,t)
F=F1+F2+F3;
disp (F," f (t)=")//result