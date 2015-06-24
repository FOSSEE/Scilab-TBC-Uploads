// Recursive computation of Ej and Fj for the system presented in Example 11.2 on page 408.
// 11.2

exec('poladd.sci',-1);
exec('polsize.sci',-1);
exec('recursion.sci',-1);

C = [1 0.5]; dC = 1;
A = [1 -0.6 -0.16]; dA = 2;
j = 2;
[Fj,dFj,Ej,dEj] = recursion(A,dA,C,dC,j)

