//Example 7.16
//Ackermann's formula for undamped oscillator.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//undamped oscillator (Pendulum) state model;
w0=1;

F=[0 1;-w0^2 0];
G=[0 1]';
H=eye(2,2); //representing x1 and x2 states as outputs
J=[0 0]';
//------------------------------------------------------------------
//Ackermann's formula for feedback gain computation

pc=[-2 -2];   //desired poles
exec('./acker_dk.sci', -1);
[K,eig]=acker_dk(F,G,pc)
disp(K,"Feedback gain K=")
disp(eig,"Closed loop eigen values are ")
//------------------------------------------------------------------


