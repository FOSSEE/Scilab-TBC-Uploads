// Example 7-13
// Nyquist Plot of MIMO system

clear; clc;
xdel(winsid());  //close all windows

A = [-1 -1 ; 6.5 0];
B = [1 1; 1 0];
C = [1 0; 0 1];
D = [0 0; 0 0];
G = syslin('c',A,B,C,D);
P = clean(ss2tf(G)); 

subplot(2,2,1);
nyquist(P(1,1),-100,100);
xgrid(color('gray'));
xtitle('Nyquist plot: From U1','Real Axis','To Y1');

subplot(2,2,2);
nyquist(P(2,1),-100,100);
xgrid(color('gray'));
xtitle('Nyquist plot: From U1','Real Axis','To Y2');

subplot(2,2,3);
nyquist(P(1,2),-100,100);
xgrid(color('gray'));
xtitle('Nyquist plot: From U2','Real Axis','To Y1');

subplot(2,2,4);
nyquist(P(2,2),-100,100);
xgrid(color('gray'));
xtitle('Nyquist plot From U2','Real Axis','To Y2');
