clc
//initialisation
n=166*10^-7//kg/m/sec
k=2.7*10^25//m^-3
d=1.25//kg/m^3
c=450//m/sec
//CALCULATIONS
l=3*n/(d*c)
f=c/l
di=sqrt(1/(sqrt(2)*%pi*k*l))
//results
printf(' mean free path= % 1e m',l)
printf(' \ncollision frequency= % 1e c',f)
printf(' \navg velocity= % 1e m',di)
