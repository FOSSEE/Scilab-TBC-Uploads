//Caption:solution_of_differential equation
// example 1.6.2
//page 9
//after taking laplace transform and applying given condition, we get :
//X(s)=2s+5/(s(s+4))
s=%s;
syms t
[A]=pfss((2*s+5)/(s*(s+4)))
A(1)=1.25/s
F1 =ilaplace(A(1),s,t)
F2 = ilaplace(A(2),s,t)
f=F1+F2;
disp (f,"f(t)=")//result