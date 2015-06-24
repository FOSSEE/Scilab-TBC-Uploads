//clear//
//Example9.37:Unilateral  Laplace Transform:Solving Differential Equation
//Y(S) = alpha/(s(s+1)(s+2))
s = %s;
syms t;
alpha = 1;   //Alpha value assigned as some constant one
[A] = pfss(alpha/(s*(s+1)*(s+2)));
F1 = ilaplace(A(1),s,t)
F2 = ilaplace(A(2),s,t)
F3 = ilaplace(A(3),s,t)
F = F1+F2+F3
disp(F)
//result
// (-%e^-t)+((%e^-(2*t))/2)+(1/2 )
