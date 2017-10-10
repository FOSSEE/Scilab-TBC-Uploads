//Example 7.13
//Zeros for the Thermal System from a State Description

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
// State space model of the given system
F=[-7 -12; 1 0];
G=[1;0];
H=[1 2];
J=0;
sysG=syslin('c',F,G,H,J)
//------------------------------------------------------------------
//Transfer function model
[d num den]=ss2tf(sysG);
zr=roots(num);
disp(zr,'zr=');
//Alternately, it can be obtained as
zr=trzeros(sysG);
disp(zr,'zr=');
//------------------------------------------------------------------


