//closed loop transfer function matrix
s=%s
G=[1/(s+1) -1/s;2 1/(s+2)]
H=[1 0;0 1]
GH=G*H
disp(GH,"G(s)H(s)=")
I=[1 0;0 1]
x=I+GH
y=inv(x)
M=y*G
disp(M,"M(s)=")