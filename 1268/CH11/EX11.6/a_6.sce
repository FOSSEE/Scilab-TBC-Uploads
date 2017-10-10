clear;
disp("Example A.6")
d=1e-4 // diameter in m 
mew=1e-3 // viscosity in kg/ms
densityp=1200 // of particle in kg/m^3
density= 1000 // of water in kg/m^3
t=0.256*densityp*d*d/mew
U=densityp*d*d*9.81*(1-(density/densityp))/(18*mew)
Re=d*U*density/mew
disp(t,"Time is ")
