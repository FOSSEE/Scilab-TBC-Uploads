//page 121
clear;
close;
clc;
disp('Applying current law A''y=f at nodes 1,2,3:')
A=[-1 1 0;0 -1 1; -1 0 1;0 0 -1;-1 0 0];
disp(A','A''=');
C=diag(rand(5,1)); //Taking some values for the resistances.
b=zeros(5,1);
b(3,1)=rand(1);//Taking some value of the battery.
f=zeros(3,1);
f(2,1)=rand(1);//Taking some value of the current source.
B=[b;f];
disp('The other equation is inv(C)y+Ax=b.The block form of the two equations is:')
C=[inv(C) A;A' zeros(3,3)];
disp(C);
X=['y1';'y2';'y3';'y4';'y5';'x1';'x2';'x3'];
disp(X,'X=')
X=C\B;
disp(X,'X=');
//end