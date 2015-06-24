//To calculate the magnetic moment and saturation magnetisation
AW = 157.26;      //atomic weight
d = 7.8*10^3;     //density, kg/m^3
A = 6.025*10^26;     //avagadro number
mew0 = 4*%pi*10^-7;
N = d*A/AW;      //number of atoms 1 kg contains
g = N/10^3;      //number of atoms 1 g contains
mew_B = 7.1;     //bohr magneton
mew_m = 9.27*10^-24;
mew_mg = g*mew_B*mew_m;     //magnetic moment per gram, Am^2
printf("magnetic moment per gram is %5.2f Am^2",mew_mg);
Bs = N*mew0*mew_m;      //saturation magnetisation, Wb/m^2
printf("saturation magnetisation is %5.4f Wb/m^2",Bs);

//answer for saturation magnetisation given in the book is wrong
