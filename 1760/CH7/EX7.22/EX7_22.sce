                           //EXAMPLE 7-22      PG NO-482
Z11=4;
Z21=3;
Z12=3;
Z22=5;
Z=[Z11 Z12;Z21 Z22];
X=det(Z);
disp(' delta is   = '+string(X)+'');
Y=[(Z22/X) (-Z12/X);(-Z21/X) (Z11/X)];
disp(' ADMITTANCE is   = '+string(Y)+'');
