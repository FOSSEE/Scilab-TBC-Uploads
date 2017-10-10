//Voltage V, Armature resistance Ra, Field resistance Rf
//Armature current Ia, Line current Il, flux is reduced by phir
close();
clear;
clc;
V = 250;//V
Ra = 0.22;//ohm
Rf = 170;
N = 1200;//rpm
Ia = 3;//A
Il = 55;
phir = 0.06;
E_noload = V - Ia*Ra;
If = V/Rf;
E_fullload = V - (Il-If)*Ra;
nm_fullload = N*(E_noload/E_fullload)*(1/1-phir);
mprintf('Full load speed = %0.0f rpm',nm_fullload);