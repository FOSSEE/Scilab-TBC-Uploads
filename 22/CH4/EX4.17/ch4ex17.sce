//signals and systems
//Unilateral  Laplace Transform:Solving Differential Equation
//example 4.17
s= %s;
syms t;
[A] = pfss((2*s^2+9*s+4)/((s)*(s^2+3*s+1)));
F1 = ilaplace(A(1),s,t)
F2 = ilaplace(A(2),s,t)
F3 = ilaplace(A(3),s,t)
F = F1+F2+F3
disp(F)