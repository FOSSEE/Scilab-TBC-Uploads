                   //EXAMPLE  7-5           PG NO-439-440
Z11=-0.4;
Z21=-3.2;
Z12=0.4;
Z22=1.2;
Z=[Z11 Z12;Z21 Z22];
X=det(Z);
disp(' delta is   = '+string(X)+'');
Y=[(Z22/X) (-Z12/X);(-Z21/X) (Z11/X)];
disp(' ADMITTANCE is   = '+string(Y)+'');
