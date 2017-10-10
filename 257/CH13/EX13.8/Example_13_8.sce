syms s X1 X2 X3 U;

T=(s+4)*(s+2)/((s)*(s+1)*(s+3))

disp("state modle is")
A=[0 1 1; -0 -3 1; 0 0 -1]
B=[1;1;1]*U
X=[X1;X2;X3]
C=[1 0 0];
D=0;
disp(A*X+B,"[diff(X1);diff(X2);diff(X3)]=")
disp(C*X+D,"and Y = ")