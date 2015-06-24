clc
clear

//INPUT
t=273;//temperature of the hydrogen molecule in K
n=6.03*10^23;//1 mole of hydrogen molecules
r=8.31*10^7;//universal gas constant in erg/K/mole

//CALCULATIONS
e=(1.5*r*t)/n;//kinetic energy of the hydrogen molecule in erg

//OUTPUT
mprintf('the kinetic energy of the hydrogen molecule is %3.16ferg',e)
