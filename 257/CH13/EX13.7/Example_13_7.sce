syms s X1 X2 X3 U;

T=(1)/((s+2)^2*(s+1))

disp("state modle is")
A=[-2 1 0; -0 -2 0; 0 0 -1]
B=[0;1;1]*U
X=[X1;X2;X3]
C=[-1 -1 1];
D=0;
disp(A*X+B,"[diff(X1);diff(X2);diff(X3)]=")
disp(C*X+D,"and Y = ")