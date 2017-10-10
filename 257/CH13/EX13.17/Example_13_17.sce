A=[1 0;1 1 ]
Xo=[1;0]
phi=inv(s*eye(2,2)-A)

a1=ilaplace(phi(1,1),s,t)
a2=ilaplace(phi(1,2),s,t)
a3=ilaplace(phi(2,1),s,t)
a4=ilaplace(phi(2,2),s,t)

S=[a1 a2;a3 a4]
disp(S*Xo,"X(t) = ")