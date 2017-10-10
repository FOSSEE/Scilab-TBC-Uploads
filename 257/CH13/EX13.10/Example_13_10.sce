syms s U1 U2
A=[0 3; -2 -5];
B=[1 1 ; 1 1];
C=[2 1; 1 0];
D=[0 0 ; 0 0];
U=[U1;U2]
TM= C*inv(s*eye(2,2)-A) *B + D;
disp(TM*U,"Y = ")