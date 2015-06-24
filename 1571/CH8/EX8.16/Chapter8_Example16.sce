clc
clear

//INPUT
dv=4;//final volume of neon in lit
t=273;//temperature of the gas in K
n=2.6/22.4;//the no.of moles of neon
r=1.98;//universal gas constant in cal/K.mol

//CALCULATIONS
w=n*t*r*log(dv);//work done by gas in ergs

//OUTPUT
mprintf('the work done by 2.6lit of neon is %3.2f ergs',w)
