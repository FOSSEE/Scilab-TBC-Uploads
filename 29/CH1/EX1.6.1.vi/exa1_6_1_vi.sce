//Caption:program_laplace_transform
//example 1.6.1.(v)
//page 9
//this problem is solved in two parts because in this problem pfss function donot work.So, First we find partial fraction using method as we do in maths and then secondly we find inverse laplace transform as usual.
// partial fraction 
s=%s
syms t;
num=(s^2+2*s+3);
den=(s+2)^3;
g=syslin('c',num/den);
rd=roots(den);
[n d k]=factors(g)
a(3)=horner(g*d(1)^3,rd(1))
a(2)=horner(derivat(g*d(1)^3),rd(1))
a(1)=horner(derivat(derivat(g*d(1)^3)),rd(1))
//inverse laplace
// partial fraction will be: a(1)/(s+1)+a(2)/((s+2)^2)+a(3)/((s+2)^3)
F1 = ilaplace (1/d(1),s,t)
F2 = ilaplace (-2/(d(1)^2),s,t)
F3 = ilaplace (2*1.5/(d(1)^3),s,t)
F=F1+F2+F3
disp (F," f(t)=")//result