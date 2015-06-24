clc;clear;
//Example 13.4

//given data
m=4.00387;//mass of alpha particle in a.m.u
M=10^-6;//mass of Pu-239 in kg 

//calculations
m=m*1.66*10^-24;//conversion in gm
Mo=2300*m;
k=(Mo/1)/M;
hf=0.693/k;
hf=hf/(365*24*3600);//conversion in yrs
disp(hf,'half life in yrs')