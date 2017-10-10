//Example 7.10
//Transformation of Thermal System from Control to Modal Form

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
// State space matrices of the given system
Ac=[-7 1; -12 0];
Bc=[1;2];
Cc=[1 0];
Dc=0;
//------------------------------------------------------------------
// State space representation in modal canonical form
T=[4 -3;-1 1]
Am=T\Ac*T;
Bm=T\Bc;
Cm=Cc*T;
Dm=Dc;
disp(Dm,"Dm",Cm,"Cm", Bm,"Bm",Am,"Am","Thermal System in modal canonical form")
//------------------------------------------------------------------
