syms s t
A=[1 -2; 1 -4]
X=[0.5 ; 1]
phi=inv(s*eye(2,2)-A)
disp(phi)

a1=ilaplace(phi(1,1),s,t)
a2=ilaplace(phi(1,2),s,t)
a3=ilaplace(phi(2,1),s,t)
a4=ilaplace(phi(2,2),s,t)

S=[a1 a2;a3 a4]
disp(S,"X(t) = ")