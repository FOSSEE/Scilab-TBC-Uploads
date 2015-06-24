clc
clear

//INPUT
t=295;//temperature of water in K
dp=10^6;//cahnge in pressure in dyne/sq.cm
j=4.2*10^7;//joules constant in ergs/cal

//CALCULATIONS
dc=-t*10^-5*dp/j;//change in specific heat

//OUTPUT
mprintf('the change in specific heat is %3.7f cal/degree',dc)
