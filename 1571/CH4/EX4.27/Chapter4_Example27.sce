clc
clear

//INPUT
m=6*10^-24;//mass of the helium atom in gm
k= 1.38*10^-16;//boltzmann constant in erg
t1=100;//temperature in K
t2=900;//temperature in K

//CALCULATIONS
r=(t1/t2)^(3/2)*(2.7183^(m*(1/(2*k))*10^8*(1-(1/9))));//fractional change in the no.of helium atoms

//OUPUT
mprintf('the fractional change in the no.of helium atoms %3.4f',r)
