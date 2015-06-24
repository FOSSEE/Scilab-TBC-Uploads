//page 238
clear;
close;
clc;
A=[1 0 1 6 2;0 1 1 0 3];
b=[8 9]';
c=[0 0 7 -1 -3]';
lb=[0 0 0 0 0]'
ub=[];
[x,lagr,f]=linpro(c,A,b,lb,ub);
disp(x,'New corner:');
disp(f,'Minimum cost:');
//end