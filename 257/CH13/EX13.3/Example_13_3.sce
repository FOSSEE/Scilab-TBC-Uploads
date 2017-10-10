syms Y t
X1=Y;
X2=diff(Y,t);
X3=diff(X2,t);

A=[0 1 0;0 0 1; -2 -7 -4]
B=[0 ; 0 ; 5]

disp("OUTPUT IS C*X + D*U WHERE ")
C=[1 0 0 ];
D=0;
disp(C,"C=")
disp(D,"D= ")
