//Example 6.25
//Z transform of Vz , d0*v[n] + d1*v[n-1] = p0*d[n] + p1*d[n-1]; 
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS EXAMPLE
clc;
clear;
syms p0 p1 d0 d1;
z= %z;
disp('given that v[n] -->  V(z).Using Time shifting property,we get : ')
disp(' d0*Vz + d1*Vz*(1/z) = p0 + p1*(1/z) ');
disp('Rearranging the terms ...');
Vz = (p0 + p1/z)/(d0 + d1/z);
disp(Vz,'Z-transform is Vz =');
 