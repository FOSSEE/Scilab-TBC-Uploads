//To calculate the magnetic moment
d = 8906;     //density, kg/m^3
n = 6.025*10^26;     //avagadro number
AW = 58.7;     //atomic weight
N = d*n/AW;     //number of atoms/m^3
Bs = 0.65;     //magnetic induction, Wb/m^2
mew0 = 4*%pi*10^-7;
mew_m = Bs/(N*mew0);      //magnetic moment, Am^2
mewB = 9.27*10^-24;      
mew_m = mew_m/mewB;       //magnetic moment, mewB
printf("the magnetic moment of Ni is %5.2f mewB",mew_m);
