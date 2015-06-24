
//example 7.1
//page 245
clc; funcprot(0);
//initialisation of variable
mug=8620/10000;//viscosity of glycerine
nuw=0.804*10^-6//kinematic viscosity of water
S=1.26;
rhog=995.7;//density of glycerine
rhow=1000;//density of water
D=0.02;
V=0.3;
Rw=V*D/nuw;
disp(Rw,"reynolds number of water flow");
disp("reynolds number greater than 2000 so flow turbulent");
Rg=V*D/mug*rhog;
disp(Rg,"reynolds number of glycerine flow");
disp("reynolds number less than 2000 so flow laminar");
clear
