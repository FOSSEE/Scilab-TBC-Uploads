//Initialisation of variables
clc
C=20/(9*10^11)//converting cms to farads
F=154-100//fall in potential
R=F/60//rate of fall in potential
I=C*R//ionization current
printf('ionization current is %e amp \n',I)//correction applied
