clear;
clc;
A=[-1 0 0; 0 0 -1; 1  -1 0; 0 -1 1; -1 0 1];
B=(A');
z=diag([.05;.10;.5;.40;.25]);
y=pinv(z);
Yb=(B*y*A);
mprintf("Ybus matrix without coupling\n");
disp(Yb);

//case2
z1=[.05 0 0 0 0; 0 .10 0 0 0; 0 0 .5 0 0; 0 0 0 .4 .2;0 0 0 .2 .25];
y1=pinv(z1);
Y1b=B*y1*A;
mprintf("\nYbus matrix with coupling\n");
disp(Y1b);
Zb=pinv(Y1b);
