

//Example No 136.
//Page No 4.5.
//To find mass,momentum & energy of photon.
clc;clear;
h = 6.63*10^(-34);//Planck's constant.
c = 3*10^(8);//Velocity of ligth.
w = 10*10^(-10);//wavelength.
E = ((h*c)/w);//Energy.
printf("\n1)The energy of photon in joules is %3.3e J",E);
E = E/(1.6*10^(-19)*10^(3));
printf("\n2)The energy of photon in eV is %.3f Kev",E);
p = (h/w);//Momentum.
p = ((6.63*10^(-34))/(10*10^(-10)));
printf("\n3)The momentum of the photon is %3.3e kg.m/s",p)
m = (h/(w*c));
printf("\n4)The mass of the photon is %3.3e kg",m);
