clc
//Chapter8
//Ex_3
//Given
Mat=55.85*10^-3 //in Kg/mol
NA=6.022*10^23 // in mol^-1
p=7.86*10^3 //in kg/m3
Msat=1.75*10^6 //in A/m
funcprot(0)
beta=9.27*10^-24 //in J/tesla
n_at=p*NA/(Mat)
x=Msat/(n_at*beta)
printf("In the solid each Fe atom contributes only %f bohr magneton",x)
