clear;
clc;
//function definition
x=[0;0;0;0;1;1;1;1];
y=[0;0;1;1;0;0;1;1];
z=[0;1;0;1;0;1;0;1];
f=[1;0;1;1;0;0;1;1];
g=[0;1;0;1;1;0;1;0];
//calculating the values of expressions given
forg=bitor(f,g);
fandg=bitand(f,g);
fcmp=bitcmp(f,1);
s(:,1)=x;
s(:,2)=y;
s(:,3)=z;
s(:,4)=f;
s(:,5)=g;
s(:,6)=forg;
s(:,7)=fandg;
s(:,8)=fcmp;
p=['   x','   y','   z','   f','   g','  f+g','  fg','  f^'];
disp(p);
disp(s);