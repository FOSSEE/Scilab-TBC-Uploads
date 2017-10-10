s=%s;
A=[-2 -3;4 2]
B=[3;5]
C=[1 1]
TF=C*inv(s*eye(2,2)-A) *B
disp(TF,"transfer function = ")