//page 550
//problem 12.4
clc;
t0=-5;t1=5;
y=integrate('t^2','t',t0,t1);
f=integrate('1','t',t0,t1);
Bm=y/f;
disp(Bm,'value of Bm is');
