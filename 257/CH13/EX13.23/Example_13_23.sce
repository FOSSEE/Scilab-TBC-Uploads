syms L1 L2 R1 C X1 X2 X3
disp("state modle is")
A=[0 0 -1/L1; 0 -R1/L2 1/L2; 1/C -1/C 0]
B=[1/L1;0;1]*U
X=[X1;X2;X3]
C=[0 R1 0]
D=0
disp(A*X+B,"[diff(X1);diff(X2);diff(X3)]=")
disp(C*X+D,"and Y = ")