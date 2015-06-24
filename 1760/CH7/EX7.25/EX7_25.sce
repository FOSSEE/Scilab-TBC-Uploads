                         //EXAMPLE 7_25          PG  NO-484-485
A1=4/3;
A2=5/3;
B1=11/3;
B2=2;
C1=1/3;
C2=2;
D1=5/3;
D2=3;
A=A1+A2;
B=B1+B2;
C=C1+C2;
D=D1+D2;
X=(A*D)-(B*C);
disp(' X is   = '+string(X)+'');
Z=[A1 B1;C1 D1]*[A2 B2; C2 D2];
disp(' ABCD MATRIX is   = '+string(Z)+'');

