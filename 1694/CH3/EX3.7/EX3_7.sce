clear;
clc;
printf("\nEx3.7\n");
//page no.-123
//given
l=10^-14;.......//width of box in m
m=1.67*10^-27;...//proton mass in kg
h=1.05*10^-34;....//plkanck's constant in J-s

E1=(%pi^2*h^2)/(2*m*l^2)...........//energy of ground state in joule

E2=(4*%pi^2*h^2)/(2*m*l^2)........//energy of first excited state in joule

E=E2-E1.............//energy released in joule
//to convert into eV divide by 1.6*10^-19
printf("\nenergy released during transition is 6.2 MeV\n");
