//Caption:inverse_laplace_transform
// example 1.6.1.(iii)
//page 8
// F(s)=1/(s^2+4s+8)
s =%s ;
syms t ;
disp(1/(s^2+4*s+8),"F(s)=")
f=ilaplace(1/(s^2+4*s+8),s,t)
disp (f," f(t)=")//result