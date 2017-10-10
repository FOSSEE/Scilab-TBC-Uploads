syms R1 R2 L C U1 U2
A=[-1/(R1*C) -1/C; 1/L -R2/L]
B=[1/(C*R1) 0; 0 -R2/L]
C=[-1/R1 0]
D=[1/R1 0]
U=[U1;U2]
X=[X1;X2]
disp(A*X+B*U,"[diff(X1);diff(X2)]=")
disp(C*X+D*U,"and Y = ")