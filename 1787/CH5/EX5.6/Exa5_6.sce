//Exa 5.6
clc;
clear;
close;
//given data
CTzero=50;//in pF
VR=8;//in Volt
VK=0.7;//in Volt
n=1/3;//for Si
CT=CTzero/((1+VR/VK)^n);//in pF
disp(CT,"Junction capacitance in pF : ");