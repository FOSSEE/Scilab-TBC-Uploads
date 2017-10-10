clc; clear; close;

LEnand=4/3;
LEinv=1;
LEnor=5/3;
Cload=200;//in fF
Cin=2;//in fF
Pnand=1;
Pinv=1/2;
Pnor=3/2;
Tinv=7.5;//in picoseconds
path_effort=LEnand*LEinv*LEnor*Cload/Cin;
disp(path_effort,'Total path effort=');
Stage_effort=round(path_effort^(1/3));
disp(Stage_effort,'Stage effort=');
D=3*Stage_effort+Pnand+Pinv+Pnor;
disp(D,'Normalised delay=');
min_delay=Tinv*D;
disp(min_delay,'Physical delay value(in picoseconds)=');
cj2=Cload*LEnor/Stage_effort;
disp(cj2,'Cj+2(in fF)=');
cj1=cj2*LEinv/Stage_effort;
disp(cj1,'Cj+1(in fF)=');
cin=cj1*LEnand/Stage_effort;
disp(cin,'Cj+2(in fF)=');
mprintf('\n\nDevice size will be same as example 6.10');
//answers vary due to round off error
