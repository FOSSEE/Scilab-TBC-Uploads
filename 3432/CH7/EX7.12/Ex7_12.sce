//Example 7.12
//Transformation of Thermal System from state description

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
// State space model of Thermal System
s=%s;
F=[-7 -12; 1 0];
G=[1;0];
H=[1 2];
J=0;
sys=syslin('c',F,G,H,J)
//------------------------------------------------------------------
//Transfer function model of Thermal System
[ch num den]=ss2tf(sys);
disp(num/den, "G=","Transfer function model of Thermal System")
//------------------------------------------------------------------




