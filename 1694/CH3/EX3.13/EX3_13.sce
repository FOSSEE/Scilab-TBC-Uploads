clear;
clc;
printf("\nEx3.13\n");
//page no.-130
//given
x=10^-14;......//diameter of nucleus in m
h=6.626*10^-34;......//planck's constant in J-s
m=1.67*10^-27;......//proton mass in kg
e=1.6*10^-19;.......//charge in C
c=3*10^8;...........//speed in m/sec

p=h/(2*%pi*x).......//momentum in kg*m/s from uncertainty principle

printf("\n minimum value of momentum is 1.055*10^-20 kg*m/s\n");

E=p^2/(2*m*e).........//minimum kinetic energy in MeV

printf("\nminimum K.E. is 0.23 Mev\n");

r=m*c^2/e...........//rest mass energy of proton in MeV

printf("\nrest mass energy is 942 MeV\n");
printf("\nAS REST MASS IS VERY LARGE THAN K.E. SO,PRESENCE OF SUCH PROTONS IN NUCLEUS IS PERMITTED\n"); 
