clc
clear
//INPUT DATA
ni=2*10^16//intrinsic charge carriers in m^-3
Na=5*10^23//density of acceptor concentration of silicon with arsenic in atoms
Nd=3*10^23//density of donor concentration of silicon with arsenic in atoms

//CALCULATION
nh=(Na-Nd)//density of hole in m^-3
ne=(ni^2/(nh))/10^9//The electron concentration that is density of electrons in electrons /m^3*10^9

//OUTPUT
printf('The electron concentration that is density of electrons is %i*10^9 electrons /m^3',ne)
