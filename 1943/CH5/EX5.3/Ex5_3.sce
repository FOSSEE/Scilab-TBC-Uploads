
clc
clear
//Input data
d=427*10^-6;//The mean particle size in m
pg=1.21;//The density of air in kg/m^3
v=1.82*10^-5;//The viscosity of air in kg/ms
Umf=0.14;//Minimum superficial velocity in m/s
Ar=7753;//Archimedes number from previous example problem

//Calculations
Re=(Umf*pg*d)/v;//Reynolds number
function[f] = F(x);//function definition
    f = 7753*x^2- 381.1*x -4793;
endfunction
x = 100;//Initial guss
function[z] = D(x)//Derivative
    z= 3*x^2 - 3;
endfunction
y = fsolve(x,F, D);

//Output
printf('The sphericity of particles is = %3.3f ',y)

