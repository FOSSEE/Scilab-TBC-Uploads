//Caption:solution_of_differential_equation
// example 1.6.3
//page 10
//after taking laplace transform and applying given condition, we get :
//X(s)=1/(s^2+2s+2)
s=%s;
syms t
f = ilaplace(1/(s^2+2*s+2),s,t);
disp (f,"f(t)=")//result