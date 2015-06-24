//Caption:inverse_laplace_transform
// example 1.6.1.(iv)
//page 8
// F(s)=s+2/(s^2+4s+6)
s =%s ;
syms t ;
disp((s+2)/(s^2+4*s+6),"F(s)=")
F=ilaplace((s+2)/(s^2+4*s+6),s,t)
disp (F," f(t)=")//result