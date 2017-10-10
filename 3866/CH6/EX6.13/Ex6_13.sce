clc; clear; close;

LEinv=1;
LEnor=5/3;
LEnand=4/3;
Cload=20;//in fF
Cin=10;//in fF
Pinv=1/2;
Pnor=3/2;
Pnand=1;
path_effort=LEinv*LEnand*LEnor*Cload/Cin;
disp(path_effort,'total path effort=');
SE=path_effort^(1/4);
disp(SE,'optimal stage effort=');
delay=(4*SE)+(2*Pinv)+Pnor+Pnand;
disp(delay,'normalised delay=');
Z=LEinv*Cload/SE;
disp(Z,'Z=');
Y=LEnand*Z/SE;
disp(Y,'Y=');
X=LEnor*Y/SE;
disp(X,'X=');
Cin1=LEinv*X/SE;
disp(Cin1,'Cin=');
//answers vary due to round off error
