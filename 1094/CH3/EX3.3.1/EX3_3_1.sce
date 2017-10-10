//EXA.3.3.1
clc;
clear;
close;
H=2000 //magnetic field intensity(in A/m)
N=500 //no. of turns
l=.08*%pi //length of ring (in m)
I=H*l/N 
disp(I,'required current(in A)=')