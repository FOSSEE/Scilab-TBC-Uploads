clc;clear;
//Example 9.7

//given data
h=6.625*10^-34;//Plank's constant
m=9.12*10^-31;//mass of electron in kg

//calculations
//for (a)
nx=1;
ny=1;
nz=1;
L=1;
E=h^2*(nx^2+ny^2+nz^2)/(8*m*L^2);
disp(E,'energy in first quantum state in J');
//for (b) (nx^2+ny^2+nz^2)=6
L=1;
E=h^2*6/(8*m*L^2);
disp(E,'energy in second quantum state in J')