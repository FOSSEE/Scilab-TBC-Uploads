
// to calculATE REYNOLD'S NUMBER IN SI UNITS
clc
S=0.91 // specfic gravity
d=1000 // density of water
d1=25e-3 //diameter of pipe 
v=2.6 //volume 
u=0.38 // viscosity Ns/m2
p=(S*d)
mprintf('\n fluid density specific gravity %f Kg/m3',p)
Re=(p*d1*v)/u
mprintf('\n Reynold s value Re= %f',Re)
mprintf('Reynolds value is dimensionless,no unit')
