clear;
clc;
printf("\nEx2.22\n");
//page no.-66
//given
del_x=5*10^-14;...............//uncertainty in position in m
h=6.626*10^-34;...............//planck's constant in jouls-sec
m=1.675*10^-27;...............//mass of neutron
e=1.6*10^-19;.................//cxharge

del_p=h/del_x...............//uncertainty in momentum in kg*m/sec

E=del_p^2/(2*m*e)..............//kinetic energy in meV

printf("\nminimum Kinetic energy is 0.33 meV\n");
