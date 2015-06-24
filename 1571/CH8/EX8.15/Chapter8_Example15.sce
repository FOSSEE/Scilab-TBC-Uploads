clc
clear

//INPUT
t=303;//temperature of the one mole of the argon in K
v1=1;//intial volume in litres
v2=10;//final volume in litres
r=8.31*10^7;//universal gas constant in ergs/K.mol

//CALCULATIONS
w=r*t*log(v2/v1);//work done in isothermal expansion in ergs

//OUTPUT
mprintf('the work done in isothermal expansion is %3.2f ergs',w)
