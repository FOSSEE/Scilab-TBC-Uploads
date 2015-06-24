                                   //EXAMPLE7-42  PG NO-495-496
Z11=2/3;
Z22=Z11;
Z12=1/3;
Z21=Z12;
A=Z11/Z21;
disp(' A is (A)  = '+string(A)+'ohm');
Z=[Z11 Z12;Z21 Z22]
X=det(Z);
disp(' Determinent is (X)  = '+string(X)+'');
B=X/Z21;
disp(' B is (B)  = '+string(B)+'ohm');
C=1/Z21;
disp(' C is (C)  = '+string(C)+'mho');
D=Z22/Z21;
disp(' D is (D)  = '+string(D)+'mho');
