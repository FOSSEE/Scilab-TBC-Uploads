// Example 6.3.b //external power efficiency
clc;
clear;
close;
F=0.62;//transmission factore
nx=3.6;//refractive index
n=1;//refractive index of air
Px=((F*n^2)/(4*nx^2));//optical power emitter
Pint=0.5;//
NEP=(Px*Pint)*100;//
disp(NEP,"external power efficiency in (%) is")
