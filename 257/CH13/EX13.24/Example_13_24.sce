A=[0 1; -2 -3]
U=[1/s]
B=[0; 1]
phi=inv(s*eye(2,2)-A)
X=[1;1]
a1=ilaplace(phi(1,1),s,t)
a2=ilaplace(phi(1,2),s,t)
a3=ilaplace(phi(2,1),s,t)
a4=ilaplace(phi(2,2),s,t)

S=[a1 a2;a3 a4]
disp(S,"%e^(A*t) = ")
ZIR=S*X
disp(ZIR," ZIR = ")

k=phi*B*U
b1=ilaplace(k(1,1),s,t)
b3=ilaplace(k(2,1),s,t)

ZSR=[b1;b3]
disp(ZSR,"ZSR = ")

X=ZIR+ZSR;
disp(X," output = ")
