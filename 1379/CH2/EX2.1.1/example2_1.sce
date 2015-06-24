

//exapple 2.1 
clc; funcprot(0);
// Initialization of Variable
pi=3.1428;
mmm=16.04/1000;//molar mass of methane
mV=22.414/1000;//molar volume
R=8.314;
mu=1.08/10^5;
r=4.2/100;//radius
rr=0.026/2/r;//relative roughness
Pfinal=560*1000;
tfinal=273+24;
l=68.5;
m=2.35;//mass flow rate
//calculation
A=pi*r^2;
A=round(A*10^5)/10^5;
rho=mmm/mV;
rho24=mmm*Pfinal*273/mV/101.3/tfinal;//density at 24'C
u=m/rho24/A;
Re=u*rho24*2*r/mu;
//from graph
phi=0.0032;
//for solving using fsolve we copy numerical value of constant terms
//using back calculation
//as pressure maintained should be more than Pfinal so guessed value is Pfinal;
function[y]=eqn(x)
    y=m^2/A^2*log(x/Pfinal)+(Pfinal^2-x^2)/2/R/tfinal*mmm+4*phi*l/2/r*m^2/A^2;
endfunction
[x,v,info]=fsolve(560*10^3,eqn);
disp(x/1000,"pressure maintained at compressor in (kN/m^2):");


