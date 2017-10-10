//Initialisation of variables
clc
n=4//number of atoms in a cell for copper
//APF=n*4*%pi*r^3/(a^3)
APFCu=4*4*%pi*2*sqrt(2)/(4*16*4)
printf('APF for copper is %f \n',APFCu)//correction

r=0.98//armstrom
R=1.81//armstrom
APFNaCl=((4*4*%pi*r^3/3)+(4*4*%pi*R^3/3))/((4/3)*(2*r+2*R)^3)
printf('APF for NaCl is %f \n',APFNaCl)//correction

