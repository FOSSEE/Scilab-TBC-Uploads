clc
clear

//INPUT
t=300;//temperature of the oxygen molecule in K
n=6.02*10^23;//avagdrao's number
m=32/n;//mass of each molecule in oxygen
k=1.38*10^(-16);//boltzmann constant in erg/deg

//OUTPUT
v=(8*k*t/(3.14*m))^(0.5);//average velocity of oxygen molecule in cm/sec
v2=v*0.022384;//velocity in miles/hrs

mprintf('the avg velocity of  oxygen molecule is %3.1f miles/hour',v2)
