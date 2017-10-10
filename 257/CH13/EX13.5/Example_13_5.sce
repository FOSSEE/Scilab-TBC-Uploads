syms s X1 X2 X3 U;

T=(5*s^2+6*s+8)/(s^3+3*s^2+7*s+9)

disp("state modle is")
A=[0 1 0; 0 0 1; -9 -7 -3]
B=[0;0;1]*U
X=[X1;X2;X3]
C=[8 6 5]
D=0
disp(A*X+B,"[diff(X1);diff(X2);diff(X3)]=")
disp(C*X+D,"and Y = ")