//Example 5.4//
cx=0.5;//carbon content
b=1;//given
e=b-cx
mprintf("e = %f ",e)
c=0.4755;//As z= 0.45 therefore erf (z) is obtained //Interpolating table 5.1 gives
d=0.5205;//As z=0.50 therefore erf(z) is obtained //Interpolating table 5.1 gives
g=0.45;//given
z=(((e-c)/(d-c))*(e-g))+g
mprintf("\nz = %f",z)
x=1*10^-3;//Using the diffusivity from sample problem 5.3
D=2.98*10^-11;//m^2/s //Arrhenius equation
m=(x^2)/(4*(z^2)*D)
//mprintf("\nm = %e ",m)
i=1;//h //hour
j=3.6*10^3;//s //second
t=m*(i/j)
mprintf("\nt = %f h",t)

