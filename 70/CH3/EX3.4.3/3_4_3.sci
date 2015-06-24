//page 175
clear;
close;
clc;
disp('If we project b=(x,y,z) onto the x-y plane then its projection is p=(x,y,0),and is the sum of projection onto x- any y-axes.')
b=rand(3,1);
q1=[1;0;0];
disp(q1,'q1=');
q2=[0;1;0];
disp(q2,'q2=');
P=q1*q1'+q2*q2';
disp(P,'Overall projection matrix,P=');
disp('and,P[x;y;z]=[x;y;0]')
disp('Projection onto a plane=sum of projections onto orthonormal q1 and q2.')
//end