A=[1 0;1 1]
B=[1;1]
X=[1;0]
U=[1/s]
phi1=inv(s*eye(2,2)-A)

phi=phi1*B*U

a1=ilaplace(phi(1,1),s,t)
a3=ilaplace(phi(2,1),s,t)


S=[a1;a3]
disp(S,"X(t) = ")
