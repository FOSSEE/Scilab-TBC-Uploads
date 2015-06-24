//Example 19.2 // position of fermi level 
clc;
clear;
//given data :
//2(2%pikm/h2)^1.5=p(assume) it is a constant
p=4.83D21;//constant
nd=5D22;// concentration of donor atoms in atoms/m3
T=300;// temperature  in kelvin
k=1.38D-23;// Boltzmann constant
E=k*T*log(p*T^1.5/nd);//formula for calcilation
E=E/1.6D-19;//to convert in eV
disp(E,"position of fermi level in eV")
