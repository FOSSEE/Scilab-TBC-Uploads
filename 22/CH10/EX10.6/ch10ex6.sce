A=[0 1;-2 -3];
B=[1 0;1 1];
C=[1 0;1 1;0 2];
D=[0 0;1 0; 0 1];
syms s;
H=C*inv(s*eye(2,2)-A)*B+D;
disp(H,"the transfer function matrix H(s)=")
disp(H(3,2),"the transfer function relating y3 and x2 is H32(s)=")
