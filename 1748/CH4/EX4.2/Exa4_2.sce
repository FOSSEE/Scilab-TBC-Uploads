//Exa 4.2
clc;
clear;
close;
//Given data :
Beta=2.5;//in degree
f=3600;//in PPs
Resolution=360;//in degree
disp(Resolution,"Resolution : ");
Beta1=Resolution/Beta;//steps/revolution
disp(Beta1,"Steps per revolution : ");
n=Beta*f/360;//in rps
disp(n,"Steps required for making 25 revolution(in rps) : ");