//Graphical//
//Example 3.2.10
//Correlation Property Proof
syms n z;
x1 = (0.5)^n
X1 = symsum(x1*(z^(-n)),n,0,%inf)
X2 = symsum(x1*(z^(n)),n,0,%inf)
disp(X1,"X1 =")
disp(X2,"X2 =")
X = X1*X2
disp(X,"X=")
//Result
//Which is equivalent to Rxx(Z) = 1/(1-0.5(z+z^-1)+(0.5^2))
//i.e for a = 0.5 Rxx(Z) = 1/(1-a(z+z^-1)+(a^2))
