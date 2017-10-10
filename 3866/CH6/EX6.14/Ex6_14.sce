clc; clear; close;

Cload=200;//in fF;
Cin=20;//in fF
LEnand4=2;
LEnand2=4/3;
LEinv=1;
LEnor=5/3;
Pinv=1/2;
Pnand2=1;
Pnand4=2;
Pnor=3/2;
path_effort=LEinv*LEnand2*LEnand4*Cload/Cin;
SE=path_effort^(1/4);
D=(4*SE)+Pnand4+Pinv+Pnand2+Pinv;
disp(D,'Normalised Delay for 1st case=');
path_effort1=LEinv*LEnand2*LEnand2*LEnor*Cload/Cin;
SE1=path_effort1^(1/4);
D1=(4*SE1)+Pnand2+Pnor+Pnand2+Pinv;
disp(D1,'Normalised Delay for 2nd case=');
mprintf('\n\n Option 1 is better than option 2');
