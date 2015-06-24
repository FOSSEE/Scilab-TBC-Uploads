clc
//Example 1.2
//Calculate the shear stress at the surface of the inner cylinder
D1=25.15//mm
D2=27.62//mm
dr=0.5*(D2-D1)//mm
f=10//rpm
Vo=(%pi)*D1*f/60//mm/s
//Let D denote d/dr
DV=Vo/dr//s^-1
tow=0.005//Nm
L=92.37//mm
s=2*tow/D1^2/(%pi)/L*10^6//N/m^2
printf("The stress at the surface of the inner cylinder is %f N/m^2",s);