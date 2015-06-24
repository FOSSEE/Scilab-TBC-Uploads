//clc();
clear;
//To determine magnetic induction and dipole moment
r=6.1*10^-11;           //radius of hydrogen atom in m
new=8.8*10^15;          //frequency in revolution per sec
e=1.6*10^-19;           //electron charge in C
i=e*new;
mew0=(4*%pi*10^-7);        //mew0 in H/m
B=(mew0*i)/(2*r);
mew=i*%pi*(r^2);
printf("magnetic induction at the centre is %f Web/m^2",B);
printf("dipole moment in amp m^2 is");
disp(mew);
