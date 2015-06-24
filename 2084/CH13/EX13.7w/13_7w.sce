//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 13.7w
//calculation of the maximum weight that can be put on the block without wetting it

//given data
l=3*10^-2//length(in m) of the edge of the cubical block
rho=800//density of wood(in kg/m^3)
k=50//spring constant(in N/m)
g=10//gravitational acceleration(in m/s^2) of the earth
rho0=1000//density of water(in kg/m^3)

//calculation
s=rho/rho0//specific gravity
hin=l*s//height inside water
hout=l-hin//height outside water
V=l^3//volume of the block
Fb=V*rho0*g//force of buoyancy
Fs=k*hout//force exerted by the spring
Wdash=V*rho*g//weight of the block
W=Fb+Fs-Wdash//maximum weight

printf('the maximum weight that can be put on the block without wetting it is %3.2f N',W)
