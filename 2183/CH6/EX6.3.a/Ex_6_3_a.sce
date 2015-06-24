// Example 6.3.a//optical power emitted
clc;
clear;
close;
F=0.62;//transmission factore
nx=3.6;//refractive index
n=1;//refractive index of air
Px=((F*n^2)/(4*nx^2));//optical power emitter
disp("emiiter power in terms of power generated internally is "+string(Px)+" Pint")
