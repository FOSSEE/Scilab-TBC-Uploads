                         //EXAMPLE 7-4        PG NO 438-439
Z11=-0.4;
Z21=0.4;
Z12=-3.2;
Z22=1.2;
Z=[Z11 Z12;Z21 Z22];
X=det(Z);
disp(' delta is   = '+string(X)+'');
Y=[(Z22/X) (-Z12/X);(-Z21/X) (Z11/X)];
disp(' ADMITTANCE is   = '+string(Y)+'');
