clc
//initialisation
l1=23*10^-6
l0=19*10^-6
d=0.1785
p=10^5//n
//CALCULATIONS
df=(l1-l0)*sqrt(3/(p*d))/0.4
//results
printf(' difference in mean free path= % 1e m',df)
