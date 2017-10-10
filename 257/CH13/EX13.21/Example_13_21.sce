syms s U
T=(2*s^2+s+5)/(s^3+6*s^2+11*s+4)

disp("state modle is")
A=[0 1 0; 0 0 1; -4 -11 -6]
B=[0;0;1]*U
X=[X1;X2;X3]
C=[5 1 2]
D=0
disp(A*X+B,"[diff(X1);diff(X2);diff(X3)]=")
disp(C*X+D,"and Y = ")