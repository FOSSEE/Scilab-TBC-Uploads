clc

T=300 //K
k=8.617*10^-5 //eV/K
//derivative(Ndx,x)=a
a=-10**19 //cm**-4
Ndx=(10^16-10^19) //cm^3
l=1

//Ex=-(k*T/l)*(1/Ndx)*derivative(Ndx,x)
Ex=-(k*T/l)*(1/Ndx)*a*10^3
disp(Ex,"induced electric field in V/cm is= ")

