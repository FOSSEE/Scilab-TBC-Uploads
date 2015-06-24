clc
clear
//Initialization of variables
gam=62.4
z=10 //ft
z2=5 //ft
z3=4.25 //ft
p=2 //psig
//calculations
h=p*144/gam
Av=z^2
Fh=gam*(z+h)*Av
hpc=1/12 *z^4 /((h+z)*z^2)
Fv=gam*(z2+h) *z^2 + gam*%pi/4 *z^2 *z
xp= (gam*(z2+h) *z^2 *z2 + gam*%pi/4 *z^2 *z*z3)/(Fv)
F=sqrt(Fh^2 + Fv^2)
//results
printf("Magnitude of force = %d lb",F)
printf("\n horizontal distance from line of action of Fv = %.2f ft from AG",xp)
