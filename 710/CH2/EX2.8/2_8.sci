clc();
clear;
//To detrmine the lattice parameter
//free volume=a^3-[2*(4/3)*pi*r^3]
//for bcc a=4r/3^(1/3)
fv=61.72*(10^-30);                          //free volume
a=-[fv/(1-%pi*sqrt(3))/8]^1/3*10^31           //lattice parameter
printf("The lattice parameter is %f A",a);
