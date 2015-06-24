                       //EXAMPLE 7-37        PG NO 438-439
Z11=3.25;
Z21=0.75;
Z12=-0.75;
Z22=1.75;
Z=[Z11 Z12;Z21 Z22];
X=det(Z);
disp(' delta is   = '+string(X)+'');
Y=[(Z22/X) (-Z12/X);(-Z21/X) (Z11/X)];
disp(' ADMITTANCE is   = '+string(Y)+'');
