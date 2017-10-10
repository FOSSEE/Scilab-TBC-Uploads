syms s X1 X2 X3 U;

T=(s^2+3*s+3)/(s^3+2*s^2+3*s+1)
L1=-2/s;
L2=-3/s^2
L3=-1/s^3;
T1=1/s;
T2=3/s^2;
T3=3/s^3;

del1=1;
del2=1;
del3=1;

disp("state modle is")
A=[-2 1 0; -3 0 1; -1 0 0]
B=[1;3;3]*U
X=[X1;X2;X3]
disp(A*X+B,"[diff(X1);diff(X2);diff(X3)]=")