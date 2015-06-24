//signals and systems
//Unilateral  Laplace Transform:Solving Differential Equation
//example 4.17
s= %s;
syms t;
// Re s>-1
[A] = pfss(1/((s+1)*(s+5)));
F1 = ilaplace(A(1),s,t)
F2 = ilaplace(A(2),s,t)
//F3 = ilaplace(A(3),s,t)
F = F1+F2
disp(F)
//-5< Re s <-2
[B] = pfss(-1/((s+2)*(s+5)));
G1 = ilaplace(B(1),s,t)
G2 = ilaplace(B(2),s,t)
//F3 = ilaplace(A(3),s,t)
G = G1+G2
disp(G)