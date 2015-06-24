clc();
clear;
// To calculate the flux density at centre and dipole moment
r=6.1*10^-11;     //radius of H atom in m
new=8.8*10^15;    //frequency in rev/sec
e=1.6*10^-19;
mew0=4*%pi*10^-7;
i=e*new;
B=(mew0*i)/(2*r);
mew=i*%pi*(r^2);
printf("current is %f amp",i);
printf("magnetic induction is %f weber/m^2",B);
printf("dipole moment in amp m^2 is");
disp(mew);
