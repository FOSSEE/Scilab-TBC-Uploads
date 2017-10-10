clc;
clear;
n1=62 //no of fringes observed
lambda_1=5893 //wavelngth of sodium light in Angstrom
lambda_2=5461 //wavelength of mercury lamp in Angstrom

//calculation
n2=(n1*lambda_1)/lambda_2

mprintf("The fringes obtained when sodium lamp is replaced by a mercury lamp is = %d",n2)
//The answer varies due to round off error.