clc;
M=207.21;//atomic mass
d=11.34*1e3 //in kg/m^3
N=6.023*1e26 //in kg/m^3
n=4;//for FCC
a=((n*M)/(N*d))^(1/3);//lattice constant
r=(sqrt(2)*a)/4;//Atomic radius
disp(+'m',a,'lattice constant =');
disp(+'m',r,'Atomic radius =');
