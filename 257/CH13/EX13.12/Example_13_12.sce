T=(s^3+3*s^22+2*s)/(s^3+12*s^2+47*s+60);

A=[-3 0 0; 0 -4 0; 0 0 -5]
B=[1;1;1]
C=[-3 24 -30]
D=[1];
disp("state modle is")
disp(A*X+B,"[diff(X1);diff(X2);diff(X3)]=")
disp(C*X+D,"and Y = ")