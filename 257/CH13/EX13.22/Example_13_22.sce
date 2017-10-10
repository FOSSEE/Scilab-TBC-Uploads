//takin laplace transform we get : 

T=(2*s^2+6*s+5)/(s^3+4*s^2+5*s+2)

disp("state modle is")
A=[0 1 0; 0 0 1; -2 -5 -4]
B=[0;0;1]*U
X=[X1;X2;X3]
C=[5 6 2]
D=0
disp(A*X+B,"[diff(X1);diff(X2);diff(X3)]=")
disp(C*X+D,"and Y = ")