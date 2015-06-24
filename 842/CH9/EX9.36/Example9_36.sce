//clear//
//Example9.36:Unilateral  Laplace Transform
//X(S) = ((s^2)-3)/(s+2)
s = %s;
syms t;
[X] = pfss(((s^2)-3)/(s+2));
disp(X)
