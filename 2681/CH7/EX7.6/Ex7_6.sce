//inductance
//given
clc
A=0.04//cm^2
N=4//no. of turns
Lss=8.5*(A^(0.5))*(N^(5/3))*1d+3//PH
Lss=round(Lss/10)*10///rounding off decimals
disp(Lss*1d-3,'the inductance for the given parameter in nH')//nH

