//Caption:solution_of_differential_equation
// example 1.6.4
//page 10
//after taking laplace transform and applying given condition, we get :
//Y(s)=(6*s+6)/((s-1)*(s+2)*(s+3))
s=%s;
syms t
[A]=pfss((6*s+6)/((s-1)*(s+2)*(s+3)))
F1 = ilaplace(A(1),s,t)
F2 = ilaplace(A(2),s,t)
F3 = ilaplace(A(3),s,t)
F=F1+F2+F3;
disp (F,"f(t)=")//result