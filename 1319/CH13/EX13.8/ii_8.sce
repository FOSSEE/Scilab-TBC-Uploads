// To Compute the Maximum Induced EMF

clc;
clear;

T=1/50;
fluxmax=0.02;
N=100;

flux= fluxmax*(poly([1 -4/T],'t','c'));// Flux Equation under consideration.

e=N*(-1)*derivat(flux);

disp('volts',e,'The Maximum induced EMF= ')
