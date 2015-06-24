// Example 7.5;//optical power emitted
clc;
clear;
close;
F=0.68;//transmission factore
nx=3.6;//refractive index
n=1;//refractive index of air
Px=((F*n^2)/(4*nx^2))*100;//optical power emitter
disp(Px,"percentage of emiiter power in terms of power generated internally")
