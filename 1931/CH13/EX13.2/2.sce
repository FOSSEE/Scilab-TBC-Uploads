clc
clear
//INPUT DATA
rp=11.7//relative permittivity of silicon
N=4.82*10^28//number of atoms per unit volume in atoms/m^3
ro=8.85*10^-12//permittivity of free space
E=10^4//E in Vm^-1
e=1.6*10^-19//charge of electron in coulombs
Z=14//atomic number of silicon 

//CALCULATION
z=((ro*(rp-1))/N)//electronic polarisability in Fm^2
y=(z*E)/10^-35//The dipole moment of each atom in a field of 10^4 Vm^-1 in Cm^-3 *10^-35
x=((y*10^-35)/(Z*e))/10^-18//The effective distance at this field strength between the centre of the electron cloud in each atom and the nucleus in m*10^-18

//OUTPUT
printf('The dipole moment of each atom in a field is %3.4f*10^-35 Cm^-3 \n The effective distance at this field strength between the centre of the electron cloud in each atom and the nucleus is %3.2f*10^-18 m',y,x)

