A=[-1 -4 -1;-1 -6 -2;-1 -2 -3];
B=[0;0;1];
C=[3 1 0]

[r c]=size(A)
I=eye(r,c)

p=s*I-A // s*I-A 
r=inv(p)
q=C*r
t=q*B
