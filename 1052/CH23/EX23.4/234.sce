clc;
//Example 23.4
//page no 336
printf("Example 23.4 page no 336\n\n");
//three different diameter sized fly ash particls settle through air 
//we have to calculate the particle terminal velocity and determine how far each will fall in 30 seconds 
//assume the particles are speherical 
SG=2.31//specific gravity of fly ash
rho_w=62.4//density of water 
rho_p=SG*rho_w//density of particles
//properties of air
R=0.7302//gas constant
T=698//temperature,R
P=1//pressure ,atm
Mw=29//mol. wt of air
rho_a=P*Mw/(R*T)//density of air,lb/ft^3
meu=1.41e-5//viscosity of air,lb/ft.s
g=32.174//grav. acc
D1=0.4//diameter of particle 1,microns
D2=40//diameter of particle 2,microns
D3=400//diameter of particle 3,microns
K1=(D1/(25400*12))*(g*rho_p*rho_a/(meu^2))^(1/3)//dimensionless constant for particle 1
K2=(D2/(25400*12))*(g*rho_p*rho_a/(meu^2))^(1/3)//dimensionless constant for particle 2
K3=(D3/(25400*12))*(g*rho_p*rho_a/(meu^2))^(1/3)//dimensionless constant for particle 3
printf("\n dimensionless constant K1=%f \n K2=%f \n K3=%f ",K1,K2,K3);
//first we determine which fluid particle dynamic law applies for the above values of K
//for particle 1,strokes law applies
//for particle 2,strokes law applies
//for particle 3,intermediate law applies
//terminal settling velocity for each particle
v1=(D1/(25400*12))^2*g*rho_p/(18*meu)
printf("\n terminal settling velocity for particle 1 v1=%f ft/s",v1);
v2=(D2/(25400*12))^2*g*rho_p/(18*meu)
printf("\n terminal settling velocity v2=%f ft/s",v2);
v3=(D3/(25400*12))^1.14*0.153*g^0.71*rho_p^0.71/(rho_a^0.29*meu^0.43)
printf("\n terminal settling velocity v3=%f ft/s ",v3);
//calculation of how far x,the fly ash particles will fall in 30 seconds
t=30//time,sec
x2=v2*t//distance travel by 2 particle
x3=v3*t//distance travel by 3 particle
printf("\n distance by 2 particle x2=%f ft\n distance by 3 particle x3=%f ft",x2,x3);
//for 1 particle K1 and v1 value are without the CCF.With the correction factor lemda=6.53e-8,gives
lemda=6.53e-8//correction factor
y=-1.10*(D1/(25400*12))/(2*lemda)
A =1.257 + 0.40*exp(y)
C=1 + 2*A*lemda/(D1/(25400*12))//cunningham correction factor(ccf)
//now equation 23.36 can be employed 
v1_corrected=v1*C//corrected velocity of 1 particle
x1=v1_corrected*t//distance travel by 1 particle
printf("\n distance travel by 1 particle x1=%f ft",x1); 
