syms s X1 X2 X3 U;

T=(s^2+4)/((s+1)*(s+2)*(s+3))

disp("state modle is")
A=[-1 0 0; -0 -2 0; 0 0 -3]
B=[1;1;1]*U
X=[X1;X2;X3]
C=[2.5 -8 6.5];
D=0;
disp(A*X+B,"[diff(X1);diff(X2);diff(X3)]=")
disp(C*X+D,"and Y = ")