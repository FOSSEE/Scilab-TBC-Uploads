

//exapple 9.7 
clc; funcprot(0);
// Initialization of Variable
rhog=1200;//density of glycerol
mu=1.45;//viscosity of glycerol
pi=3.1428;
g=9.81;
rhos=2280;//density of sphere
d=8/1000;
s=0;
uf=0.8*0.026;
//calculation
function[a]=intre()
    u=linspace(0,uf,1000);
    for i=1:1000
        y=((pi/6*d^3*rhos*g-pi*d^3/6*rhog*g-0.5*pi*d^2/4*24*mu/d/rhog*rhog*u(i))/pi*6/d^3/rhos)^(-1)*uf/1000;
        s=s+y;
    end
    a=s;
endfunction
[t]=intre();
disp(t,"Time taken by particle to reach 80% of its velocity in (s):");
