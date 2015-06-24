syms t s
A=[-12 2/3;-36 -1]; B=[1/3;1]; q0=[2;1]; X=1/s;
size(A)
size(s*eye(2,2))
Q=inv(s*eye(2,2)-A)*(q0+B*X);
q=[];
q(1)=ilaplace(Q(1));
q(2)=ilaplace(Q(2));
disp(q*'u(t)',"[q1(t) ; q2(t)]")