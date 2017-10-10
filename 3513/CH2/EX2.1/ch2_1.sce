// To determine percentage of specimens
//page no 21
clear
clc;
m=5600;//mean
sd=840;//psi
lwrlmt=5600;
uprlmt=6200;
z=-0.7142;
p=23.89;//probability
sp=(100-p)-p;
mprintf("Therefore the percentage of the specimens falling between 5000 and 6200 = %.2f percentage",sp);
//(b) Percentage of specimens falling below 4000
z=4000-(lwrlmt/sd);
p=0.0287;  //The probability from tables
p=p*100;
pa=100-p
mprintf("\nTherefore the probability above 4000 = %.2f percentage",pa);
//(c)
z=3500-(lwrlmt/sd);
p=0.0062;//The probability from tables
pa=p*100;
mprintf("\nTherefore the percentage of specimen falling below 3500 = %.2f percentage",pa);

