s=%s;
A=[-0 1;-2 -3]
B=[1;0]
C=[1 0]
D=0;
TF=C*inv(s*eye(2,2)-A) *B
disp(TF,"transfer function = ")